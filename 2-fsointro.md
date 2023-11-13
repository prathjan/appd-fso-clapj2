# Cisco FSO Platform

Cisco Full-Stack Observability Platform is an:

* Extensible software platform that hosts an ecosystem of modules and applications (standalone apps and their enrichments) that provides core capabilities for developers to build observability solutions to gain visibility and actionable insights across their technology and business stack. 

* Leverages OpenTelemetry™ collections to collect MELT telemetry and then transforms the raw data into flexible and scalable objects through a flexible, entity-centric model. 

* Developers can leverage this OpenTelemetry framework and the Cisco FSO Platform's Unified Query Language (UQL) to create and monetize observability solutions

For more information on this platform, visit:
    
        https://developer.cisco.com/docs/fso/#!platform-overview/platform-introduction

# Use Cases

* Data ingestion and transformation of MELT and system data from different environments and clusters

* Insights based on correlated MELT and system data

* Network observability within the context of your application

* Extended functionality of existing Cisco observability, monitoring, and security products

* Rapid development of 3rd-party "standalone" applications

* Bespoke user interfaces

* Alerting and actioning

* Customized reports
    
    
# Cisco FSO Platform Components

* Data processing: The core of the FSO Platform that is responsible for handling various data-related tasks such as modeling, ingestion, storage, and querying.

* Developer support: The set of tools and components provided by the FSO Platform that developers use to create solutions.

* Account administration: The online services for managing FSO Platform accounts, including viewing and managing tenant access, users, roles, permissions, and subscriptions.

* FSO Platform Exchange: The online venue where end users of the FSO Platform can discover and subscribe to applications and modules. The exchange also enables developers to list and market their solutions to FSO Platform customers.
    
    
# Learning Lab Case Study 

In this workshop, we will review a sample FSO solution that integrates observability of onprem infrastructure and cloud infrastructure in a single dashboard , allowing for infrastructure/virtualization/systems/cloud team to collaborate on operational issues in a single observability platform. 

Before we get started, let's describe some of the systems that we will be integrating with: 

**Cisco Intersight** is Cisco's flagship cloud operations platform that delivers intelligent visualization, optimization, and orchestration for applications and infrastructure across your hybrid environment:

    https://www.cisco.com/site/us/en/products/computing/hybrid-cloud-operations/intersight-platform/index.html

**Cloud Native Application Observability** is Cisco’s software-as-a-service (SaaS) product for observing, securing, and optimizing large, managed Kubernetes deployments on public clouds. This is a solution built on the FSO Platform that was discussed earlier in this module:

    https://docs.appdynamics.com/fso/cloud-native-app-obs/en/about-cloud-native-application-observability

The **Intersight FSO Solution** that we will work on in this lab will attempt to bring onprem and cloud data in a single dashboard. You can look at it as a new solution that extends **Cloud Native Application Observability** with observability data from another SaaS such as **Cisco Intersight**. 

With this solution, we will exercise many of the use cases of the FSO Platform such as Data ingestion, Insights, Network observability, Extensibility, and Alerting and actioning. Lets get started!










