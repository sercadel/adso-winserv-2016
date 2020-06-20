# Grupo POLIDEPORTIVO

New-ADOrganizationalUnit -Name:"Polideportivo" -Path:"DC=polideportivolizarreria,DC=eu" -Description:"Grupo Polideportivo" -ProtectedFromAccidentalDeletion:$true -Server:"servlizarreria.polideportivolizarreria.eu"

Set-ADObject -Identity:"OU=polideportivo,DC=polideportivolizarreria,DC=eu" -ProtectedFromAccidentalDeletion:$true -Server:"servlizarreria.polideportivolizarreria.eu"


# Grupo Clientes

New-ADOrganizationalUnit -Name:"Clientes" -Path:"DC=polideportivolizarreria,DC=eu" -Description:"Grupo Clientes" -ProtectedFromAccidentalDeletion:$true -Server:"servlizarreria.polideportivolizarreria.eu"

Set-ADObject -Identity:"OU=clientes,DC=polideportivolizarreria,DC=eu" -ProtectedFromAccidentalDeletion:$true -Server:"servlizarreria.polideportivolizarreria.eu"