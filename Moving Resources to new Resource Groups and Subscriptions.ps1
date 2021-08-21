#Moving Resources to new Resource Groups and Subscriptions

Get-AzResource -ResourceGroupName chosename | Format-List -Property resourceid


$vnetid = (Get-AzResource -ResourceGroupName resourcegroupname -ResourceName resourcename).ResourceID

Move-AzResource -DestinationResourceGroupName distnation -ResourceId $vnetid 


#to move many resources in same time 
#Move-AzResource -DestinationResourceGroupName distnation -ResourceId $vnetid,$nsgid,$resource3,$resource4


#to Move from Subscription to other one : 
#Move-AzResource -DestinationResourceGroupName distnation -ResourceId $vnetid,$nsgid,$resource3,$resource4 -DestinationSubscriptionId newsubsucriptionname
