Install-Module -Name PackageManagment -Repository PSGallery -Force
    Install-Module -Name PowerShellGet -Repository PSGallery -Force

#Restart Powershell

Install-Module -Name Az.StorageSync -AllowPrerelease -AllowClobber -Force
Import-Module Az-StorageSync
Invoke-AzStorageSyncCompatibilityCheck -Path C:\ShareSync

<#
Export Results to CSV

$errors = Invoke-AzStorageSyncCompatibilityCheck -Path C:\ShareSync
$errors | Select-Object -Property Type, Path, Level, Description | Export-Csv -Path <csv path>
#>
