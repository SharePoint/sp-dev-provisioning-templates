# My SharePoint Site

https://nology897.sharepoint.com/sites/ContosoWorksSite

# Applying Template Script

Import-Module PnP.PowerShell

$baseUrl = Read-Host "Enter base URL for SharePoint (e.g. https://tenant.sharepoint.com/sites/)"
$baseTitle = Read-Host "Enter Site Name"
$baseDescription = "Description for "
$siteNumber = [int] (Read-Host "Enter # of sites to be generated")
$siteOwner = Read-Host "Enter site owner user"
$adminSiteUrl = Read-Host "Enter Admin SharePoint URL"
$templatePath = Read-Host "Enter Path to template"
$credential = Get-Credential
Connect-PnPOnline -Url $adminSiteUrl -Credentials $credential

for ($i = 1; $i -le $siteNumber; $i++) {
  $siteTitle = "$baseTitle$i"
  $siteUrl = "$baseUrl$siteTitle"
  $siteDescription = "$baseDescription$siteTitle"

try {
Write-Host "Creating site: $siteTitle at URL $siteUrl"
New-PnPSite -Type CommunicationSite -Title $siteTitle -Url $siteUrl -Lcid 1033 -Description $siteDescription -Owner $siteOwner
Write-Host "Site creation in progress for: $siteUrl"
}
catch {
Write-Host "Failed to create site: $siteUrl. Error: $\_"
continue
}

Start-Sleep -Seconds 120

Connect-PnPOnline -Url $siteUrl -Interactive

try {
Write-Host "Applying template to site: $siteUrl"
Invoke-PnPSiteTemplate -Path $templatePath
Write-Host "Template applied to site: $siteUrl"
}
catch {
Write-Host "Failed to apply template to site: $siteUrl. Error: $\_"
}

Start-Sleep -Seconds 10
}

Disconnect-PnPOnline
