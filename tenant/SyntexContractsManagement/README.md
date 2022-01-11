# Contracts Management

## Syntex powered solutions to automate your contract needs
  
This SharePoint Syntex powered site is designed to help you jump-start your contract management needs. Use the Contracts Management site to let employees know about recent updates to agreements or policies, to give various departments an easy way to request a contract, and to provide a secure place to keep your organization’s contract templates.

The site also lets employees use preconfigured sample models to extract and classify information from documents, and to perform advanced searches to quickly find metadata within your agreements.

![SharePoint Syntex Contracts Management Site](./ContactsManagement-lookbook-preview.png)

## Prerequisites

The person doing the provisioning must meet the following pre-requisites:

- Must be a tenant administrator of the tenant - also known as the Office 365 global administrator role - where the SharePoint Success Site will be provisioned.
- The person provisioning the SharePoint Syntex Contracts Management Site must have a [SharePoint Syntex license](https://docs.microsoft.com/en-us/microsoft-365/contentunderstanding/syntex-licensing)

## What will be provisioned?

This template contains following elements which will be provisioned:

- A SharePoint Syntex Content Center site holding the SharePoint Syntex Contracts Management Site content

## Manual deployment using PnP PowerShell

This template can also be manually deployed using [PnP PowerShell](https://pnp.github.io/powershell/). First ensure you've PnP PowerShell installed via `Install-Module -Name PnP.PowerShell` and configured via `Register-PnPManagementShellAccess`. Once that's done you can use the `Deploy-Template` script specifying your tenant url and the url for the Syntex Contracts Management site that will be created:

```PowerShell
.\Deploy-Template.ps1 -TenantUrl https://contoso.sharepoint.com -SiteUrl "/sites/ContractsManagement"
```

The final output of this script will show the created site, you can copy that URL and start using your site:

```PowerShell
Title                   Url
-----                   ---
Contracts Management    https://contoso.sharepoint.com/sites/ContractsManagement
Sample Contract Library
```

## Disclaimer

THIS CODE IS PROVIDED AS IS WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING ANY IMPLIED WARRANTIES OF FITNESS FOR A PARTICULAR PURPOSE, MERCHANTABILITY, OR NON-INFRINGEMENT.
