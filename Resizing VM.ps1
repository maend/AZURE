# Resizing VM
$rg = "ResourceGroupname"
$vmname = "backendserver"

Get-AzVMSize -ResourceGroupName $rg -VMName $vmname   #list all vm size 

$newvmsize = "Standard_DS1_v2"

$vm = Get-AzVMSize -ResourceGroupName $rg -VMName $vmname

$vm.HardwareProfile.VMsize          #Quiery current vm size 


$vm.HardwareProfile.VMsize = $newvmsize

Update-AzVM -vm $vm -ResourceGroupName $rg

