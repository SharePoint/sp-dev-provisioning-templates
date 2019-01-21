# Service Description

Welcome to the SharePoint PnP Provisioning Service, which can be used to provisioning demo sites with Microsoft provided provisioning templates. You can browse a catalog of templates and then apply those to any SharePoint Online tenant. This service is using PnP Tenant Templates, which are used to define what kind of customizations will be applied when the template is applied. These can be any of the following capabilities.

- Site Desigsn and Site Scripts in tenant level - Visible in tenant level
- Tenant themes
- SharePoint Framework solutions
- Required Graph or 3rd party API permissions
- Tenant taxonomy settings
- Hub site configuration
- Site collections and potential sub sites (not preferred)

**IMPORTANT** - Some templates might have pre-requirements like certain permission assumptions in the Terms Store or other adjustments. You will need to ensure that the pre-requirements have been applied or the provisioning event might fail.

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

Please use [sp-dev-provisioning-templates issue list](https://github.com/SharePoint/sp-dev-provisioning-templates) for reporting any issues on the templates or in the actual service. If you notice a generic SharePoint development related issue, please report those at the [sp-dev-docs issue list](https://github.com/SharePoint/sp-dev-docs/issues).

## Frequently Asked Questions

**Who has decided what templates are available?**

These templates were decided by SharePoint engineering together with the SharePoint design team. We do **not** welcome external templates at least for now to this service.

**Who has built this service?**

Service has been designed by SharePoint engineering and it has been built by SharePoint engineering together with the SharePoint Patterns and Practices MVP team. 

**Is the service code open-source?**

Code used by the service will be released as an open-source sample later 2019. Actual provisioning logic is done using PnP Provisioning Engine, which is already open-sourced and avaialble using code or PowerShell.

**I identified an issue on the service - where to report it?**

Please report any issues which you might have using the the [sp-dev-docs issue list](https://github.com/SharePoint/sp-dev-docs/issues) issue list. We will be following up on them as soon as possible, but please note that there's no direct SLA for this community built project through Microsoft.