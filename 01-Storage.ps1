$rg = 'arm-intruduction-01'
New-AzResourceGroup -Name $rg -Location northeurope -Force

New-AzResourceGroupDeployment `
    -Name 'new-Storage' `
    -ResourceGroup $rg `
    -TemplateFile '01-storage.json' `
    -storageName 'amdemostoage3test' `
    -storageSKU 'Standard_GRS'