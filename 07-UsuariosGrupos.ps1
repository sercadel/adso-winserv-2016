# Añade los clientes con la descripción "Adultos" en el grupo "Adultos".
Get-ADUser -SearchBase ‘OU=Clientes,DC=Polideportivolizarreria,DC=eu’ -Filter 'Description -eq "Adultos"' | ForEach-Object {Add-ADGroupMember -Identity ‘Adultos’ -Members $_ }

# Añade los clientes con la descripción "Menores" en el grupo "Menores".
Get-ADUser -SearchBase ‘OU=Clientes,DC=Polideportivolizarreria,DC=eu’ -Filter 'Description -eq "Menores"' | ForEach-Object {Add-ADGroupMember -Identity ‘Menores’ -Members $_ }

# Añade los clientes con la descripción "Administración" en el grupo "Administración".
Get-ADUser -SearchBase ‘OU=Polideportivo,DC=Polideportivolizarreria,DC=eu’ -Filter 'Description -eq "Administración"' | ForEach-Object {Add-ADGroupMember -Identity ‘Administración’ -Members $_ }

# Añade los clientes con la descripción "Contabilidad" en el grupo "Contabilidad".
Get-ADUser -SearchBase ‘OU=Polideportivo,DC=Polideportivolizarreria,DC=eu’ -Filter 'Description -eq "Contabilidad"' | ForEach-Object {Add-ADGroupMember -Identity ‘Contabilidad’ -Members $_ }

# Añade los clientes con la descripción "Entrenadores" en el grupo "Entrenadores".
Get-ADUser -SearchBase ‘OU=Polideportivo,DC=Polideportivolizarreria,DC=eu’ -Filter 'Description -eq "Entrenadores"' | ForEach-Object {Add-ADGroupMember -Identity ‘Entrenadores’ -Members $_ }

# Añade los clientes con la descripción "Mantenimiento" en el grupo "Mantenimiento".
Get-ADUser -SearchBase ‘OU=Polideportivo,DC=Polideportivolizarreria,DC=eu’ -Filter 'Description -eq "Mantenimiento"' | ForEach-Object {Add-ADGroupMember -Identity ‘Mantenimiento’ -Members $_ }

# Añade los clientes con la descripción "Personal" en el grupo "Personal".
Get-ADUser -SearchBase ‘OU=Polideportivo,DC=Polideportivolizarreria,DC=eu’ -Filter 'Description -eq "Personal"' | ForEach-Object {Add-ADGroupMember -Identity ‘Personal’ -Members $_ }