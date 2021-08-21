#Create AD USER 

$pwprofile = New-Object -Type Microsoft.Open.AzureAD.Model.PasswordProfile

$pwprofile.password = "MyPassword!123"

New-AzureADUser -AccountEnable $true -PasswordProfile $pwprofile -DisplayName "Maen User" -UserPrincipalName "MaenUser@xyz.com" -MailNickName "MaenUser"

