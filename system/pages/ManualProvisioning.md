# How to Provision a Look Book Template on your tenant

In this page you can find detailed information about how to manually provision a Look Book template on your tenant.

## Software prerequisites
In order to provision the Look Book templates you need to have the following software tools installed on your machine:
- [PowerShell Core](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell?view=powershell-7.2)
- [PnP PowerShell](https://pnp.github.io/powershell/)

Once you have installed the above tools, you can proceed with the following sections.

## Available templates
The Look Book templates are based on the PnP Provisioning engine. As such, every single template is represented by a .PNP file, which is nothing more than an OpenXML file that includes all the needed content to deploy the template.
Here follows a table where you can find the list of all the Look Book templates, a link do download the corresponding PNP template file, and the prerequisites.

Category|Template|Site Type|Parameters|Prerequisites
--------|--------|---------|----------|-------------
|Organization|[Leadership Connection](https://github.com/SharePoint/sp-dev-provisioning-templates/blob/master/tenant/leadershipconnection/leadershipconnection.pnp)|Communication Site|<ul><li>SiteTitle</li><li>SiteUrl</li></ul>|SharePoint Online Admin
||[The Perspective](https://github.com/SharePoint/sp-dev-provisioning-templates/blob/master/tenant/theperspective/theperspective.pnp)|Communication Site|<ul><li>SiteTitle</li><li>SiteUrl</li></ul>|SharePoint Online Admin
||[Crisis Communications](https://github.com/SharePoint/sp-dev-provisioning-templates/blob/master/tenant/crisis-mgmt/crisis-mgmt.pnp)|||SharePoint Online Admin
||[News site](https://github.com/SharePoint/sp-dev-provisioning-templates/blob/master/tenant/contosonews/contosonews.pnp)|||SharePoint Online Admin
||[The Landing](https://github.com/SharePoint/sp-dev-provisioning-templates/blob/master/tenant/thelanding/thelanding.pnp)|||SharePoint Online Admin
||[Benefits](https://github.com/SharePoint/sp-dev-provisioning-templates/blob/master/tenant/benefits/benefits.pnp)|||SharePoint Online Admin
||[LGBTQ+ Employee Resource Group](https://github.com/SharePoint/sp-dev-provisioning-templates/blob/master/tenant/pride/pride.pnp)|||SharePoint Online Admin
|Department|[Retail Operations](https://github.com/SharePoint/sp-dev-provisioning-templates/blob/master/tenant/retailoperations/retailoperations.pnp)|||SharePoint Online Admin
||[Fly Safe Conference](https://github.com/SharePoint/sp-dev-provisioning-templates/blob/master/tenant/flysafeconference/flysafeconference.pnp)|||SharePoint Online Admin
||[Global sales hub](https://github.com/SharePoint/sp-dev-provisioning-templates/blob/master/tenant/globalsales/globalsales.pnp)|||SharePoint Online Admin
||[Workshop training site](https://github.com/SharePoint/sp-dev-provisioning-templates/blob/master/tenant/droneproducttraining/droneproducttraining.pnp)|||SharePoint Online Admin
||[Global marketing hub](https://github.com/SharePoint/sp-dev-provisioning-templates/blob/master/tenant/globalmarketing/globalmarketing.pnp)|||SharePoint Online Admin
||[Human resources hub](https://github.com/SharePoint/sp-dev-provisioning-templates/blob/master/tenant/contosoworks/contosoworks.pnp)|||SharePoint Online Admin
|Team|[Collaboration team site](https://github.com/SharePoint/sp-dev-provisioning-templates/blob/master/tenant/ContosoTeamSite/ContosoTeamSite.pnp)|||SharePoint Online Admin
||[Team communication site](https://github.com/SharePoint/sp-dev-provisioning-templates/blob/master/tenant/communications/communications.pnp)|||SharePoint Online Admin
||[Mark8 Project Team](https://github.com/SharePoint/sp-dev-provisioning-templates/blob/master/tenant/mark8projectteam/mark8projectteam.pnp)|||SharePoint Online Admin
||[Product Support](https://github.com/SharePoint/sp-dev-provisioning-templates/blob/master/tenant/productsupport/productsupport.pnp)|||SharePoint Online Admin
|Community|[Branding Site](https://github.com/SharePoint/sp-dev-provisioning-templates/blob/master/tenant/contosobrand/contosobrand.pnp)|||SharePoint Online Admin
||[Charitable site](https://github.com/SharePoint/sp-dev-provisioning-templates/blob/master/tenant/give/give.pnp)|||SharePoint Online Admin
|Solutions|[Microsoft 365 learning pathways](https://github.com/SharePoint/sp-dev-provisioning-templates/blob/master/tenant/M365LearningPathways/M365LP.pnp)|||SharePoint Online Admin, App Catalog
||[New employee departmental onboarding site](https://github.com/SharePoint/sp-dev-provisioning-templates/blob/master/tenant/NEO-departmental/template.pnp)|||SharePoint Online Admin
||[Workplace Transformation site](https://github.com/SharePoint/sp-dev-provisioning-templates/blob/master/tenant/HybridWork/HybridWork.pnp)|||SharePoint Online Admin
||[New employee pre-onboarding site](https://github.com/SharePoint/sp-dev-provisioning-templates/blob/master/tenant/NEO-preonboarding/template.pnp)|||SharePoint Online Admin
||[New employee corporate onboarding site](https://github.com/SharePoint/sp-dev-provisioning-templates/blob/master/tenant/NEO-main/template.pnp)|||SharePoint Online Admin
||[Microsoft 365 freelance communications site](https://github.com/SharePoint/sp-dev-provisioning-templates/blob/master/tenant/FreelanceToolkit/M365FreelanceCommsSite.pnp)|
||[SharePoint Success Site](https://github.com/SharePoint/sp-dev-provisioning-templates/blob/master/tenant/SharePointSuccessSite/SharePointSuccessSite.pnp)|||SharePoint Online Admin, App Catalog
|Schools|[School home page](https://github.com/SharePoint/sp-dev-provisioning-templates/blob/master/site/eduportal/eduportal.pnp)|Communication Site|<ul><li>SiteTitle</li><li>SiteUrl</li></ul>|Regular user
||[Staff home page](https://github.com/SharePoint/sp-dev-provisioning-templates/blob/master/site/edustaff/edustaff.pnp)|Team Site|<ul><li>SiteTitle</li><li>SiteUrl</li></ul>|Regular user
||[Class home page](https://github.com/SharePoint/sp-dev-provisioning-templates/blob/master/site/educlass/educlass.pnp)|Team Site|<ul><li>SiteTitle</li><li>SiteUrl</li></ul>|Regular user
|SharePoint Syntex|[SharePoint Syntex Contracts Management](https://github.com/SharePoint/sp-dev-provisioning-templates/blob/master/tenant/SyntexContractsManagement/ContractsManagement.pnp)|||SharePoint Online Admin
||[SharePint Syntex Content Center](https://github.com/SharePoint/sp-dev-provisioning-templates/blob/master/tenant/SyntexContentCenter/ContentCenter.pnp)|||SharePoint Online Admin

Here follow a brief guidance about the parameters:
- SiteTitle: is just the title of the site that will be created for you while provisioning the template. 
- SiteUrl: is the server-relative URL of the site that will be created for your while provisioning the template. It can be something like: _/sites/name-of-the-site_ .

Here follows a brief guidance about the meaning of the prerequisites:
- SharePoint Online Admin: you need to execute the provisioning using a users who is member of the SharePoint Online Administrators group.
- App Catalog: you need to have a fully functional tenant-wide App Catalog in your target tenant, and you need to execute the provisioning using a user who has admin access to the App Catalog site.
- Regular user: you can execute the provisioning with a regular user of SharePoint Online. 

> Note: If you don't have the App Catalog configured in your tenant, and the template that you are willing to provision requires the App Catalog, you can follow the instructions provided in this [online document](https://docs.microsoft.com/en-us/sharepoint/dev/spfx/set-up-your-developer-tenant#create-app-catalog-site).

## Provisioning a template
In order to execute the actual provisioning you will need to execute a PowerShell cmdlet provided by the PnP PowerShell extensions.

### Provisioning templates that require a SharePoint Online Admin
Download the .PNP template file that you want to provision, save it in a local folder, and run the following PowerShell command:

```powershell
Connect-PnPOnline https://<tenant>-admin.sharepoint.com/

Invoke-PnPTenantTemplate -Path .\your-template-file.pnp -Parameters @{"SiteTitle"="<Title-of-your-site>";"SiteUrl"="/sites/<URL-of-your-target-site>"}
```

Replace \<tenant\> with the actual name of your SharePoint Online tenant in Microsoft 365.
Remember to provide a valure for all the  parameters declared in the above table.

### Provisioning templates that require a Regular User
Download the .PNP template file that you want to provision, save it in a local folder, and run the following PowerShell command:

```powershell
Connect-PnPOnline https://<tenant>-admin.sharepoint.com/

Invoke-PnPSiteTemplate -Path .\your-template-file.pnp -Parameters @{"SiteTitle"="<Title-of-your-site>";"SiteUrl"="/sites/<URL-of-your-target-site>"}
```

Replace \<tenant\> with the actual name of your SharePoint Online tenant in Microsoft 365.
Remember to provide a valure for all the  parameters declared in the above table.

## Next Steps
Now that you have provisioned the Look Book template on your tenant, feel free to browse to the site URL that you selected and play with the new site.

In case of any issue, do not hesitate to file an issue in the [PnP Provisioning Service repository on GitHub](https://github.com/SharePoint/sp-provisioning-service/issues).