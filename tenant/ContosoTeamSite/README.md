# Team Site

This template is quite a complex template with some example content for enabling collaboration at team site level.

![Full layout](./top-team.png)

Notice that you can easily extend the initially provisioned site for example by doing following modifications:

- Include product or company news directly on the team site welcome page from the hub sites
- Include discussions and other web parts on the page based on your requirements

## Template content

Template contains following structures and assets:

- New site collection using group associated team site template, unless applied on top of existing site
- Custom welcome page
- 2 additional content pages
- 3 news articles with example content
- Custom content type associated on the Documents library
- Additional document library with custom content type
- Sample Word, PowerPoint and Excel files related on the sample content of the site
- Sample image content used in the template

**Notice** - If applied on top of existing communication site, welcome page content will be overridden.

## Full layout

Below picture shows the expected layout from this template.

![Full layout](./full-layout-team.png)

**Note** - There might be small differences between the screenshot from the [SharePoint look book](https://spdesign.azurewebsites.net) and the end results of the template. Template automation will get you as close as possible given certain API level limitations. Templates are also designed to be as independent as possible, which has resulted some compromises on the implementation.

## Prerequisites

Here are current prerequisites for making this solution work in your tenant.

- You will need to be a tenant administrator to be able to deploy this solution
    - Notice that you can get free developer tenant from [Office 365 developer program](https://developer.microsoft.com/en-us/office/dev-program), if needed
- Automatic end-to-end provisioning only works with English tenants
    - All solutions and web parts are also English in the current implementation
- A tenant 'App Catalog' must have been created within the 'Apps' option of the SharePoint Admin Center