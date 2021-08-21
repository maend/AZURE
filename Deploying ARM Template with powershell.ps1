#Deploying ARM Template with powershell

$rg = "Recourcegroup1formylab"

New-AzResourceGroup -name $rg -Location francecentral

New-AzResourceGroupDeployment -Name depoymenttest -ResourceGroupName $rg -TemplateParameterUri "https://raw.githubusercontent.com/maend/AZURE/main/VM_TEMPLATE.json"