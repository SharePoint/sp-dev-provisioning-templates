# Work

This template demonstrates how a typical work-oriented hub site could look like in SharePoint Online. It is designed to aggregate content and news from the associated site collections to show all relevant information from a single location.

![Work at Contoso top pic](./top-work-at-contoso.png)

The Work @ Contoso template consists from multiple site collections which are all automatically associated to the hub site so that all out-of-the-box aggregation capabilities will work as expected.

The template also creates the hub navigation automatically with a sample information architecture, which you can easily modify and extend based on your own requirements.

![Work at Contoso pic](./full-layout-work-at-contoso.png)

**Note** - There might be small differences between the screenshot from the [SharePoint look book](https://spdesign.azurewebsites.net) and the end results of the template. Template automation will get you as close as possible given certain API level limitations. Templates are also designed to be as independent as possible, which has resulted some compromises on the used implementation.

## Prerequisites

Here are current prerequisites for making this solution work in your tenant.

- You will need to be a tenant administrator to be able to deploy this solution
    - Notice that you can get free developer tenant from [Office 365 developer program](https://developer.microsoft.com/en-us/office/dev-program), if needed
- Automatic end-to-end provisioning only works with English tenants
    - All solutions and web parts are also English in the current implementation
- A tenant 'App Catalog' must have been created within the 'Apps' option of the SharePoint Admin Center
