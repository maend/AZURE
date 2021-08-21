#Create Virtual Network

$vnet = New-AzVirtualNetwork -resourcegroupname MyfirstRG -Location westus2 -name myfirstnetwork -AddressPrefix 172.30.0.0/26

#Create Subnet
$sub = Add-AzVirtualNetworkSubnetConfig -name BOB -AddressPrefix 172.30.1.0/24 -VirtualNetwork $vnet

#commit changes 
$vnet | set-AzVirtualNetwork

