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
Installs the Syntex Contracts Management template in your tenant.
.EXAMPLE
PS C:\> .\Deploy-Template.ps1 -TenantUrl https://contoso.sharepoint.com
.EXAMPLE
PS C:\> .\Deploy-Template.ps1 -TenantUrl https://contoso.sharepoint.com -SiteUrl "/sites/ContractsManagement" 
#>

[CmdletBinding()]
param
(
    [Parameter(Mandatory = $true, HelpMessage="Url of your tenant (e.g. https://contoso.sharepoint.com)")]
    [string] $TenantUrl,
    [Parameter(Mandatory = $false, HelpMessage="Site relative url for the site to create (defaults to /sites/ContractsManagement)")]
    [string] $SiteUrl    
)

# Connect to the root site of the tenant
Connect-PnPOnline -Url $TenantUrl -Interactive

# Verify if the user has a Syntex License
Write-Host "Performing a SharePoint Syntex license check..."
$syntexLicense = Invoke-PnPSPRestMethod -Method Get -Url "/_api/machinelearning/MachineLearningEnabled/UserSyntexEnabled" -Raw

if ($syntexLicense -ne '{"value":true}')
{
    Write-Host "Current user does not have a SharePoint Syntex license, template cannot be deployed." -ForegroundColor Red
    Exit 1
}
else 
{    
    Write-Host "Current user does have a SharePoint Syntex license, deployment continues..." -ForegroundColor Green
}

# Apply the template
if ($SiteUrl -eq $null -or $SiteUrl -eq "")
{
    $SiteUrl = "/sites/ContractsManagement"
}

Write-Host "Applying the Contracts Management package..."
Invoke-PnPTenantTemplate -Path .\ContractsManagement.pnp -Parameters @{"SiteUrl"=$SiteUrl} -ClearNavigation

Write-Host "Preparing for post provisioning"
Start-Sleep -Seconds 15

# Apply the post provisioning work
Write-Host "Performing post deployment steps..."
Connect-PnPOnline -Url "$TenantUrl$SiteUrl" -Interactive
Start-Sleep -Seconds 5
Invoke-PnPSPRestMethod -Method Post -Url "/_api/machinelearning/models/SetupPrimedLibrary" -Content "{'primedLibraryName':'Sample Contract Library','packageName':'ContractsSitePackage.cmp'}"

Write-Host "Provisioning complete!" -ForegroundColor Green
