# Grupo Administración
New-ADGroup `
-Name "Administración" `
-SamAccountName "Administración" `
-Description "Grupo de Administración." `
-DisplayName "Administración" `
-GroupCategory Security `
-GroupScope Global `
-Path "OU=Polideportivo,DC=polideportivolizarreria,DC=eu" `
-Server "servlizarreria.polideportivolizarreria.eu"

Set-ADObject `
-Identity:"CN=Administración,OU=Polideportivo,DC=polideportivolizarreria,DC=eu" `
-ProtectedFromAccidentalDeletion:$true `
-Server:"servlizarreria.polideportivolizarreria.eu"

# Grupo Contabilidad
New-ADGroup `
-Name "Contabilidad" `
-SamAccountName "Contabilidad" `
-Description "Grupo de Contabilidad." `
-DisplayName "Contabilidad" `
-GroupCategory Security `
-GroupScope Global `
-Path "OU=Polideportivo,DC=polideportivolizarreria,DC=eu"`
-Server "servlizarreria.polideportivolizarreria.eu"

Set-ADObject `
-Identity:"CN=Contabilidad,OU=Polideportivo,DC=polideportivolizarreria,DC=eu" `
-ProtectedFromAccidentalDeletion:$true `
-Server:"servlizarreria.polideportivolizarreria.eu"

# Grupo Entrenadores
New-ADGroup `
-Name "Entrenadores" `
-SamAccountName "Entrenadores" `
-Description "Grupo de Entrenadores." `
-DisplayName "Entrenadores" `
-GroupCategory Security `
-GroupScope Global `
-Path "OU=Polideportivo,DC=polideportivolizarreria,DC=eu" `
-Server "servlizarreria.polideportivolizarreria.eu"

Set-ADObject `
-Identity:"CN=Entrenadores,OU=Polideportivo,DC=polideportivolizarreria,DC=eu" `
-ProtectedFromAccidentalDeletion:$true `
-Server:"servlizarreria.polideportivolizarreria.eu"

# Grupo Mantenimiento
New-ADGroup `
-Name "Mantenimiento" `
-SamAccountName "Mantenimiento" `
-Description "Grupo de Mantenimiento." `
-DisplayName "Mantenimiento" `
-GroupCategory Security `
-GroupScope Global `
-Path "OU=Polideportivo,DC=polideportivolizarreria,DC=eu" `
-Server "servlizarreria.polideportivolizarreria.eu"

Set-ADObject `
-Identity:"CN=Mantenimiento,OU=Polideportivo,DC=polideportivolizarreria,DC=eu" `
-ProtectedFromAccidentalDeletion:$true `
-Server:"servlizarreria.polideportivolizarreria.eu"

# Grupo Personal
New-ADGroup `
-Name "Personal" `
-SamAccountName "Personal" `
-Description "Grupo de Personal." `
-DisplayName "Personal" `
-GroupCategory Security `
-GroupScope Global `
-Path "OU=Polideportivo,DC=polideportivolizarreria,DC=eu" `
-Server "servlizarreria.polideportivolizarreria.eu"

Set-ADObject `
-Identity:"CN=Personal,OU=Polideportivo,DC=polideportivolizarreria,DC=eu" `
-ProtectedFromAccidentalDeletion:$true `
-Server:"servlizarreria.polideportivolizarreria.eu"