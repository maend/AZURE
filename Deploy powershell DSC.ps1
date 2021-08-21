#Deploy powershell DSC
Publish-AzVMDscConfiguration -ResourceGroupName storage -StorageAccountName networkchuckstorage ".\Helloworld.ps1" -Force

Set-AzVMDscExtension -Version "2.80" -ResourceGroupName morePWERSHELLDSC -VMName backendserver -ArchiveResourceGroupName storage -ArchiveStorageAccountName networkchuckstorage -ArchiveBlobName "Hellowworld.ps1.zip" -ConfigurationName "Helloworld"