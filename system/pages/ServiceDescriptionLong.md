# Service Description

Welcome to the SharePoint PnP Provisioning Service, which can be used to provisioning demo sites with sample content templates and solutions provided by Microsoft. You can browse a catalog of templates and then apply chosen template to any SharePoint Online tenant. You will need to be a **tenant administrator** to be able to use this service.

Templates can contain any of the following capabilities:

- Sample pages and images
- Sample news articles
- Office documents as a sample content for the pages
- Site Designs and Site Scripts in tenant level - Visible in tenant level
- Modern Tenant themes for branding
- SharePoint Framework solutions with web parts and extensions
- Required Graph or 3rd party API permissions
- Tenant taxonomy settings
- Site collections
- Hub site configuration

Please carefully read template description for details around the content of the template and on possible prerequisites. Some templates have certain permission assumptions for example for Terms Store settings or other adjustments. You will need to ensure that the Prerequisites have been applied or the provisioning operation can fail.

**NOTICE** - Actual provisioning operation is NOT transactional, so if template provisioning is interrupted due an issue in the used template or due to any other reason, template might be only partially applied.

## Support and SLA

PnP Provisioning Service is under the same support and SLA process as all open-source solutions and services provided by SharePoint engineering:

- PnP guidance and samples are created by Microsoft & by the Community
- PnP guidance and samples are maintained by Microsoft & community
- PnP uses supported and recommended techniques
- PnP implementations are reviewed and approved by Microsoft engineering
- PnP is an open-source initiative by the community – people who work on the initiative for the benefit of others, have their normal day job as well
- PnP is NOT a product and therefore it’s not supported by Premier Support or other official support channels
- PnP is supported in similar ways as other open source projects done by Microsoft with support from the community by the - community
- There is no SLA for responding on the issues related on this service
- There are numerous partners that utilize PnP within their solutions for customers. Support for this is provided by the Partner. When PnP material is used in deployments, we recommend being clear with your customer/deployment owner on the support model

Please use [sp-dev-docs issue list](https://github.com/SharePoint/sp-dev-docs/issues) for reporting any issues on the templates or in the actual service. You can use this location also for any generic SharePoint dev issues.

## Frequently Asked Questions

**Who has decided what templates are available?**

These templates were decided by SharePoint engineering together with the SharePoint design team. We do **not** welcome external templates at least for now to this service.

**Who has built this service?**

Service has been designed by SharePoint engineering and it has been built by SharePoint engineering together with the SharePoint Patterns and Practices MVP team.

**Is the service code open-source?**

Code used by the service will be released as an open-source sample later 2019. Actual provisioning logic is done using PnP Provisioning Engine, which is already open-sourced and available using code or PowerShell.

**I identified an issue on the service - where to report it?**

Please report any issues which you might have using the [sp-dev-docs issue list](https://github.com/SharePoint/sp-dev-docs/issues) issue list. We will be following up on them as soon as possible, but please note that there's no direct SLA for this community-built  project through Microsoft.

**Are the templates only provisioning SharePoint assets?**

Mainly yes. They can provision already Office 365 groups as those are created by default for the modern team sites. Starting from spring 2019, templates can also include other assets as the PnP Provisioning engine will start supporting for example Microsoft Team provisioning (Teams, channels, tabs) and other Office 365 assets based on the API support.

**Is there away to use the templates without this service?**

Yes. All templates which are visible in the service area available from [GitHub repository](https://github.com/SharePoint/sp-dev-provisioning-templates) which acts as the source location for all the visible information in this service. You can download the used templates and related assets directly from the GitHub and then use [PnP PowerShell](https://docs.microsoft.com/en-us/powershell/sharepoint/sharepoint-pnp/sharepoint-pnp-cmdlets) to use them also outside of this service.

**Where can I find more details on the used PnP Tenant Templates?**

Start by watching specific [PnP Webcast related on the PnP Tenant Templates](https://developer.microsoft.com/en-us/sharepoint/blogs/pnp-webcast-introduction-to-pnp-tenant-templates/).

**I just created an app catalog to my tenant, but having challenges with the service**

It can take up to 20-30 minutes for the app catalog creation to be fully completed. Please try again after a while and if the issue continues, please report that using the [sp-dev-docs issue list](https://github.com/SharePoint/sp-dev-docs/issues).

## Technical details

This service uses the [PnP Provisioning engine](https://www.youtube.com/watch?v=kRbrrGCfUtE) as the underlying process to apply the needed configuration to your tenant. This is open-source community built engine, which is also available as CSOM extension or by using [PnP PowerShell](https://docs.microsoft.com/en-us/powershell/sharepoint/sharepoint-pnp/sharepoint-pnp-cmdlets?view=sharepoint-ps).