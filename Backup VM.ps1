#Backup VM 

New-AzRecoveryServicesVault -ResourceGroupName Backupcli -Name voldemo -Location centralus

$vaultid = (Get-Azrecoveryservicesvault -Name voldemo).ID 


Set-AzRecoveryServicesVaultContext 

Get-Azrecoveryservicesvault -Name voldemo | Set-AzRecoveryServicesBackupProperty -BackupStorageRedundancy LocallyRedundant

$policy = get-azrecoveryservicesbackupprotectionpolicy -Name "defaultpolicy"

Enable-AzRecoveryServicesBackupProtection -ResourceGroupName backupcli -Name backupclivm -Policy $policy