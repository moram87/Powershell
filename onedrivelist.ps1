$TenantUrl = "https://tenant-name.sharepoint.com/"
$LogFile = [Environment]::GetFolderPath("Desktop") + "\OneDriveSites.log"
Connect-SPOService $TenantUrl
Get-SPOSite -IncludePersonalSite $true -Limit all -Filter "Url -like '-my.sharepoint.com/personal/'" | Select -ExpandProperty Url | Out-File $LogFile -Force
Write-Host "Done! File saved as $($LogFile)."
