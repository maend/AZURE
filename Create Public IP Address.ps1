#Create Public IP Address 
#Basic 

new-azpublicipaddress -Name FirstPublicIP -ResourceGroupName RGName -Sku basic -AllocationMethod Dynamic -DomainNameLabel myipbasic -Location 'South Central US'

