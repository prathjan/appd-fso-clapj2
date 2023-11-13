# Leveraging the Cisco FSO Platform: Integrating with Cisco Intersight for Enhanced Observability

In this lab session, we will explore the integration of Cisco FSO Platform with Cisco DC Infrastructure, enabling you to bridge the gap between network management and observability. This lab session will get you started with leveraging this powerful combination for improved network visibility and control.

Following is a list of modules we will follow to introduce you to developing FSO Solutions on Cisco's FSO Platform:

    * Introduction to OpenTelemetry
    
    * Introduction to Observability with FSO Platform
    
    * Setting up Observability for Intersight managed Infrastructure
    
    * Setting up Observability for Public Cloud managed Infrastructure
    
    * Subscription and Review of Intersight FSO Solution With FSOC
    
    * Extending Intersight FSO Solution With FSOC
    
    * Setting up entity health rules with Intersight ICO Workflow

## First Steps

Before you get started with the lab, please reserve a sandbox using the following link: https://dcloud2-rtp.cisco.com/content/instantdemo/appdynamics-observability-training-devnet

Once you reserve a sandbox sucessfully, the test setup will be provisioned with:

    * AWS labuser account with baseline infrastructure, including a minimal EKS cluster

    * User account to access the AppDynamics Cloud portal (https://cisco-devnet.observe.appdynamics.com) 
    
    * Service principal to access AppDynamics Cloud API's
    
    * User account to access Cisco Intersight (https://intersight.com/)

You will see the following data for the sandbox you reserved. Please note the following, you will have to copy and enter this information once you start the lab:

![alt text](https://github.com/prathjan/images/blob/main/reserve2.png?raw=true)

    * APPD_CLIENTID_POST 
    This is the client id that you would use for authenticating API's with POST Type. For details on this, please check : https://docs.appdynamics.com/appd-cloud/en/appdynamics-cloud-apis/create-service-principals

    * APPD_SECRET_POST
    This is the secret that you would use for authenticating API's with POST Type. For details on this, please check : https://docs.appdynamics.com/appd-cloud/en/appdynamics-cloud-apis/create-service-principals

    * APPD_CLIENTID_BASIC
    This is the client id that you would use for authenticating API's with Basic Type. For details on this, please check : https://docs.appdynamics.com/appd-cloud/en/appdynamics-cloud-apis/create-service-principals

    * APPD_SECRET_BASIC
    This is the secret that you would use for authenticating API's with Basic Type. For details on this, please check : https://docs.appdynamics.com/appd-cloud/en/appdynamics-cloud-apis/create-service-principals

    * TENANT_NAME=cisco-devnet
    For purposes of this lab, the tenant that you will use will be cisco-devnet.

    * AWS_ACCESS_KEY
    AWS accesskey to sign programmatic requests to AWS API.

    * AWS_SECRET_KEY
    AWS secretkey to sign programmatic requests to AWS API.

    * AWS_CONNECTION_NAME
    Your choice of a connection name to connect to your assigned AWS account. If not specified, the lab will use "AwsConnection"

If you have completed these first steps, you are now ready to start the lab to learn about Cisco FSO Platform and Solutions using Cisco Intersight.


