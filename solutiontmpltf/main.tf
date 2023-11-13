terraform {
  required_providers {
    template = {
      source = "hashicorp/template"
      version = "2.2.0"
    }
  }
}

variable "solution"{
  description = "FSO solution name"
  type        = string
}
variable "svcid"{
  description = "FSO svc principal ID"
  type        = string
}
variable "svcsecret"{
  description = "FSO svc principal secret"
  type        = string
}
variable "tenid"{
  description = "FSO tenant"
  type        = string
}
variable "url"{
  description = "FSO URL"
  type        = string
}

provider "template" {
  # Configuration options
}

locals {
    svcfile = templatefile("svcprin.tmpl", {tenid=var.tenid, url=var.url, svcid=var.svcid, svcsecret=var.svcsecret})
}

resource "template_dir" "transform" {
  source_dir      = "${path.module}/../solutiontmpl"
  destination_dir = "${path.module}/../solution"

  vars = {
    solution = "${var.solution}"
  }
}

resource "null_resource" "local" {
  # Render to local file on machine
  provisioner "local-exec" {
    command = format(
      "cat <<\"EOF\" > \"%s\"\n%s\nEOF",
      "${path.module}/../svcprin.json",
      local.svcfile
    )
  }
}

