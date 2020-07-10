# Mark8 Project Team with custom search result page

This template illustrates the use of a custom search result page. When searching from the navigation bar search box you are redirected to a custom search result page. The search result page displays items from within the current site using SPFx search result web parts and custom templating.

## Template content

The template contains the following structures and assets:

- Custom search results page using PnP Modern Search web parts
    - The template is built using [PnP Modern Search v3.14.2](https://github.com/microsoft-search/pnp-modern-search/releases/tag/3.14.2). If you have an older version installed of the PnP Modern Search web parts v3 the template might not work.
    - If **pnp-modern-search-parts.sppkg** is already installed in your tenant, it will not be overwritten.
    - Information about [PnP Modern Search](https://microsoft-search.github.io/pnp-modern-search/).
- Complex welcome page with out-of-the-box web parts
- Example images and Office documents

**Notice** - If applied on top of an existing communication site, the welcome page content will be overridden.

## Full layout

Below picture shows the expected search experience from this template.

![Search layout](./search-layout-mark8projectteam.jpg)

**Note** - There might be small differences between the screenshot from the [SharePoint look book](https://spdesign.azurewebsites.net) and the end results of the template. Template automation will get you as close as possible given certain API level limitations. Templates are also designed to be as independent as possible, which has resulted some compromises on the implementation.

## Prerequisites

Here are current prerequisites for making this solution work in your tenant.

- You will need to be a tenant administrator to be able to deploy this solution to the target tenant
- Automatic end-to-end provisioning has only been tested with English tenants
- A tenant 'App Catalog' must have been created within the 'Apps' option of the SharePoint Admin Center and you must be one of the site collection admins of the 'App Catalog' site collection
