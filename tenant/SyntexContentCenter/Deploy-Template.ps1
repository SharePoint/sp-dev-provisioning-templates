# This script assumes you've installed a recent version of PnP PowerShell
# 
# To install PnP PowerShell:
# Install-Module -Name PnP.PowerShell
#
# After initial installation you will need to setup an Azure AD application to authenticate. See https://pnp.github.io/powershell/articles/authentication.html 
# for the details or use below:
# Register-PnPManagementShellAccess
#
# To upgrade to the latest release:
# Update-Module -Name PnP.PowerShell

<#
.SYNOPSIS
Installs the Syntex Content Center template in your tenant.
.EXAMPLE
PS C:\> .\Deploy-Template.ps1 -TenantUrl https://contoso.sharepoint.com
.EXAMPLE
PS C:\> .\Deploy-Template.ps1 -TenantUrl https://contoso.sharepoint.com -SiteUrl "/sites/syntexcontentcenterdemo" 
#>

[CmdletBinding()]
param
(
    [Parameter(Mandatory = $true, HelpMessage="Url of your tenant (e.g. https://contoso.sharepoint.com)")]
    [string] $TenantUrl,
    [Parameter(Mandatory = $false, HelpMessage="Site relative url for the site to create (defaults to /sites/SyntexContentCenter)")]
    [string] $SiteUrl    
)

# Connect to the root site of the tenant
Connect-PnPOnline -Url $TenantUrl -Interactive

# Apply the template
if ($SiteUrl -eq $null -or $SiteUrl -eq "")
{
    $SiteUrl = "/sites/SyntexContentCenter"
}

Invoke-PnPTenantTemplate -Path .\ContentCenter.pnp -Parameters @{"SiteUrl"=$SiteUrl} -ClearNavigation