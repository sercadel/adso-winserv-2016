# Grupo Adultos
New-ADGroup `
-Name "Adultos" `
-SamAccountName "Adultos" `
-Description "Grupo de clientes adultos." `
-DisplayName "Adultos" `
-GroupCategory Security `
-GroupScope Global `
-Path "OU=Clientes,DC=polideportivolizarreria,DC=eu" `
-Server "servlizarreria.polideportivolizarreria.eu"

Set-ADObject `
-Identity:"CN=Adultos,OU=Clientes,DC=polideportivolizarreria,DC=eu" `
-ProtectedFromAccidentalDeletion:$true `
-Server:"servlizarreria.polideportivolizarreria.eu"

# Grupo Menores
New-ADGroup `
-Name "Menores" `
-SamAccountName "Menores" `
-Description "Grupo de clientes menores." `
-DisplayName "Menores" `
-GroupCategory Security `
-GroupScope Global `
-Path "OU=Clientes,DC=polideportivolizarreria,DC=eu" `
-Server "servlizarreria.polideportivolizarreria.eu"

Set-ADObject `
-Identity:"CN=Menores,OU=Clientes,DC=polideportivolizarreria,DC=eu" `
-ProtectedFromAccidentalDeletion:$true `
-Server:"servlizarreria.polideportivolizarreria.eu"