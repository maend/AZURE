#Deploying custom Roles 

#1-Query Resources 
Get-AzProviderOperation */vertualMachines/*

Get-AzProviderOperation */vertualMachines/* | FT Operation,OperationName

Get-AzSubsucription | FL   #format list

Get-AzRoleDefinition -Name "reader" | ConvertTo-Json | Out-File $HOME/clouddrive/ReaderVM.json


dir $HOME/clouddrive


code $HOME/clouddrive


New-AzRoleDefinition -InputFile $HOME/clouddrive/ReaderVM.json

Get-AzRoleDefinition | Where-Object {$_.IsCustom -eq $true} | FL