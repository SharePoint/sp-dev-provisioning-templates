# Service Description

The SharePoint PnP Provisioning Service lets you add samples, templates and solutions (collectively, "templates") to your Office 365 tenant.

## Using the SharePoint PnP Provisioning Service

To use the service, browse the catalog and select a template. Read the documentation to understand the template's prerequisites, credential requirements, and customizations.
 
### PREREQUISITES

Some templates have prerequisites including permissions to the term store or other configuration. Ensure that the prerequisites are met, otherwise provisioning might fail.
 
### CREDENTIAL REQUIREMENTS

To add a template to your tenant, you must be authenticated with appropriate credentials--tenant admin or site admin--as specified in the template documentation.

### CUSTOMIZATIONS

The SharePoint PnP Provisioning Service uses PnP tenant templates, and customizations include one or more of the following:
 
- Sample pages and images
- Sample news articles
- Office documents as a sample content
- Site designs and site scripts, which are applied at the tenant scope and will be available throughout the tenant
- Tenant themes
- SharePoint Framework solutions with web parts and extensions
- Microsoft Graph or 3rd party API permissions
- Tenant taxonomy settings
- Hub site configuration
- Site collections 

After evaluating the sample, template or solution, deploy it to your environment by clicking **Add to your tenant**. We strongly recommend deploying to a test tenant so that you can carefully analyze the results before deploying to your production tenant. You will be required to log in to your tenant with appropriate credentials. 

Provisioning operations are NOT transactional. If template provisioning is interrupted, the template might be only partially applied. In this case, you can either re-apply the template or manually delete content and revert configuration.

## About the SharePoint PnP Provisioning Service

Each sample, template and solution is defined by a [PnP Tenant Template](https://developer.microsoft.com/en-us/sharepoint/blogs/pnp-webcast-introduction-to-pnp-tenant-templates/) that specifies content and configuration for the tenant, site collections, and sites. The PnP Template is deployed using the [PnP Provisioning engine](https://www.youtube.com/watch?v=kRbrrGCfUtE), an open source community built engine which is also available as a CSOM extension or by using [PnP PowerShell](https://docs.microsoft.com/en-us/powershell/sharepoint/sharepoint-pnp/sharepoint-pnp-cmdlets).
 
This is an open source community hosted service, so there is no support from Microsoft for this service or for the contents of samples, templates, and solutions.

## Support and SLA

The PnP Provisioning Service is covered by the same support and SLA process as all open-source solutions and services provided by SharePoint engineering:

- PnP guidance and samples are created by Microsoft & the community
- PnP guidance and samples are maintained by Microsoft & the community
- PnP uses supported and recommended techniques
- PnP implementations are reviewed and approved by Microsoft engineering
- PnP is an open-source initiative by the community – people who work on the initiative for the benefit of others, have their normal day job as well
- PnP is NOT a product and therefore it’s not supported by Premier Support or other official support channels
- PnP is supported in similar ways as other open source projects done by Microsoft with support from the community by the community
- There is no SLA for responding on the issues related on this service
- There are numerous partners that utilize PnP within their solutions for customers. Support for these solutions are provided by the Partner. When PnP material is used in deployments, we recommend being clear with your customer/deployment owner on the support model
 
Please use [sp-dev-docs issue list](https://github.com/SharePoint/sp-dev-docs/issues) for reporting any issues on the templates or in the actual service. You can use this location also for any generic SharePoint dev issues.
 
## Frequently Asked Questions

**Who has decided what templates are available?**

Templates are selected by the SharePoint engineering and design teams. At this time, the Service does not accept or include templates from external parties.

**Who has built this service?**

The Service has been designed by the SharePoint engineering and built by the SharePoint engineering together with the SharePoint Patterns and Practices MVP team.

**Is the service code open-source?**

Code used by the service will be released as an open-source sample later 2019. Provisioning uses the PnP Provisioning Engine, which is already open-sourced and available using code or PowerShell.

**I identified an issue on the service - where to report it?**

Please report any issues which you might have using the [sp-dev-docs issue list](https://github.com/SharePoint/sp-dev-docs/issues).  We will be following up on them as soon as possible, but please note that there's no SLA for this community-built project through Microsoft.

**Are the templates only provisioning SharePoint assets?**

In addition to SharePoint content and configuration, some templates provision team sites, which thereby provision Office 365 groups. Soon, templates will support other assets, including team, channels, tabs in Microsoft Teams and other Office 365 assets.

**Is there away to use the templates without this service?**

Yes. All templates which are visible in the service area available from [GitHub repository](https://github.com/SharePoint/sp-dev-provisioning-templates) which acts as the source location for all the visible information in this service. You can download the used templates and related assets directly from the GitHub and then use [PnP PowerShell](https://docs.microsoft.com/en-us/powershell/sharepoint/sharepoint-pnp/sharepoint-pnp-cmdlets) to use them also outside of this service.

**I just created an app catalog to my tenant, but having challenges with the service**

It can take up to 20-30 minutes for the app catalog creation to be fully completed. Please try again after a while and if the issue continues, please report that using the [sp-dev-docs issue list](https://github.com/SharePoint/sp-dev-docs/issues).