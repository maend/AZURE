#VM Custom script extension (mount New Hard disk)

Set-AzVMCustomScriptExtension -ResourceGroupName vnetwsub -VMName backendserver -Location eastus2 -FileName https://raw.githubusercontent.com/maend/AZURE/main/win_initialize_data_disk.ps1 -Run mountdisk.ps1