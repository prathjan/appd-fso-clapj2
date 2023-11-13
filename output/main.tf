/**
 * Copyright 2023 Cisco Systems, Inc. and its affiliates
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

# Providers ----------------------------------------------------------------------------------------
provider "aws" {
  region = var.aws_region
}

provider "kubernetes" {
  host                   = data.aws_eks_cluster.cluster.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority[0].data)
  token                  = data.aws_eks_cluster_auth.this.token
}

provider "helm" {
  kubernetes {
    host                   = data.aws_eks_cluster.cluster.endpoint
    cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority[0].data)
    token                  = data.aws_eks_cluster_auth.this.token
  }
}

provider "kubectl" {
  apply_retry_count      = 10
  host                   = data.aws_eks_cluster.cluster.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority[0].data)
  load_config_file       = false
  token                  = data.aws_eks_cluster_auth.this.token
}

# Locals -------------------------------------------------------------------------------------------

# Data Sources -------------------------------------------------------------------------------------
# find the user currently in use by aws.
data "aws_caller_identity" "current" {
}

# retrieve eks cluster configuration.
data "aws_eks_cluster" "cluster" {
  name = var.aws_eks_cluster_name
}

# retrieve authentication token to communicate with the eks cluster.
data "aws_eks_cluster_auth" "this" {
  name = var.aws_eks_cluster_name
}

locals {
template_vars = {
cluster_name     = data.aws_eks_cluster.cluster.name
cluster_endpoint = data.aws_eks_cluster.cluster.endpoint
cluster_ca       = data.aws_eks_cluster.cluster.certificate_authority[0].data
token            = nonsensitive(data.aws_eks_cluster_auth.this.token)
}
kubeconfig = templatefile("${path.module}/kubeconfig.tpl", local.template_vars)
kubebase64 = base64encode(local.kubeconfig)

}

output "aws_region" {
  description = "AWS region."
  value       = var.aws_region
}

output "aws_eks_cluster_name" {
  description = "AWS EKS Cluster name."
  value       = var.aws_eks_cluster_name
}
output "aws_eks_cluster_details" {
  description = "AWS EKS Cluster details."
  value       = local.template_vars
}
output "kubeconfig" {
  description = "AWS EKS Cluster kubeconfig."
  value       = local.kubebase64
}

