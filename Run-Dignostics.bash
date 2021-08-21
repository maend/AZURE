PS /home/maen> $sa = az storage account show -n freeresourcegroupgues107 --query id

$resource = az resource show -n Windows-VM-01-nsg -g Free_ResourceGroup --resource-type Microsoft.Network/networkSecurityGroups --query id

az monitor dignostic-settings create --resource $resource --name mydig --storage-account $sa --logs

PS /home/maen> az monitor diagnostic-settings create --resource $resource --name mydig --storage-account $sa --logs '[
>> {
>> ""category"": ""NetworkSecurityGroupEvent"",
>> ""enabled"": true
>> }
>> ]'
