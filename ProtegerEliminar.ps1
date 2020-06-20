# Importa el módulo de directorio activo para ejecutar cmdlets de AD.
Import-Module activedirectory
  
# Guarda los datos de CuentasUsuarios.csv en la variable $ADUsers.
$ADUsers = Import-csv .\CuentasUsuarios.csv

# Recorre cada fila que contiene los detalles de cada usuario en el fichero CSV.
foreach ($User in $ADUsers)
{
	# Lee los datos de usuario de cada campo de cada fila y asigna los datos a una variable.	

    $DisplayName = $User.DisplayName
    $OU = $User.OU # Este campo indica la OU en la que se creará la cuenta de usuario.

    $DistinguishedName = CN=$DisplayName.replace('"',""),$OU.replace('"',"")

	# Protege de eliminación accidental a los usuarios obtenidos del fichero CSV.
	Set-ADObject `
            -Identity "$DistinguishedName" `
            -ProtectedFromAccidentalDeletion $true
}