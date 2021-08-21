PS /home/maen> Get-AzStorageaccount

StorageAccountName       ResourceGroupName              PrimaryLocation SkuName      Kind      AccessTier CreationTime         ProvisioningState EnableHttpsTrafficOnly LargeFileShares
------------------       -----------------              --------------- -------      ----      ---------- ------------         ----------------- ---------------------- ---------------
freeresourcegroupgues107 FREE_RESOURCEGROUP             eastus          Standard_LRS Storage              7/11/2021 4:22:42 PM Succeeded         True
csb10037ffe906cf0f3      cloud-shell-storage-westeurope westeurope      Standard_LRS StorageV2 Hot        7/5/2021 6:31:49 PM  Succeeded         True


-------------------------------

PS /home/maen> $sa = (Get-AzStorageaccount -storageaccountname freeresourcegroupgues107 -resourcegroupname FREE_RESOURCEGROUP).id
PS /home/maen> $sa
/subscriptions/940fcbed-5d09-48cb-916b-d99045a29fdf/resourceGroups/FREE_RESOURCEGROUP/providers/Microsoft.Storage/storageAccounts/freeresourcegroupgues107

PS /home/maen> $resource = (get-azresource -name Windows-VM-01-nsg -resourcegroupname Free_ResourceGroup -ResourceType Microsoft.Network/networkSecurityGroups).id
PS /home/maen> $resource
/subscriptions/940fcbed-5d09-48cb-916b-d99045a29fdf/resourceGroups/Free_ResourceGroup/providers/Microsoft.Network/networkSecurityGroups/Windows-VM-01-nsg
PS /home/maen>


Set-AzDiagnosticSetting -ResourceId $resource -StorageAccountId $sa -Enable $true

