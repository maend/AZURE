#Login to Azure 
Login-AzAccount

#Get Azure Subsucription 
Get-AzSubscription

#Create Resource Group 
new-azresourcegroup -name group1 -location eastus2

#Create VM
New-AzVM -ResourceGroupName group1 -Name vm01 -Location eastus2 -imagename Win2016Datacenter -Size "Standard_B1s" -OpenPorts 3389
