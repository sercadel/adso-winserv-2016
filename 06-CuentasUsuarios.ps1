# Importa el módulo de directorio activo para ejecutar cmdlets de AD.
Import-Module activedirectory
  
# Guarda los datos de CuentasUsuarios.csv en la variable $ADUsers.
$ADUsers = Import-csv .\CuentasUsuarios.csv

# Recorre cada fila que contiene los detalles del usuario en el fichero CSV.
foreach ($User in $ADUsers)
{
	# Lee los datos de usuario de cada campo de cada fila y asigna los datos a una variable.	
	$GivenName = $User.GivenName
    $Surname = $User.Surname
    $SamAccountName = $User.SamAccountName
    $UserPrincipalName = $User.UserPrincipalName
    $AccountPassword = $User.AccountPassword
    $OU = $User.OU # Este campo indica la OU en la que se creará la cuenta de usuario.
    $DisplayName = $User.DisplayName
    $Name = $User.Name
    $Description = $User.Description
    $Department = $User.Department
    $Country = $User.Country
    $City = $User.City
    $State = $User.State
    $PostalCode = $User.PostalCode
    $MobilePhone = $User.MobilePhone
    $EmailAddress = $User.EmailAddress

	# Comprueba si el usuario ya existe en AD.
	if (Get-ADUser -F {SamAccountName -eq $SamAccountName})
	{
		 # Avisa si el usuario ya existe.
		 Write-Warning "La cuenta con nombre de usuario $Username ya existe en Active Directory."
	}
	else # Si el usuario no existe, crea la cuenta de usuario.
	{
        # Crea la cuenta en la OU proporcionada por la variable $OU obtenida del fichero CSV.
		New-ADUser `
            -SamAccountName $SamAccountName `
            -UserPrincipalName $UserPrincipalName `
            -Name $Name `
            -GivenName $GivenName `
            -Surname $Surname `
            -Enabled $True `
            -DisplayName $DisplayName `
            -Description $Description `
            -Department $Department `
            -Country $Country `
            -City $City `
            -State $State `
            -PostalCode $PostalCode `
            -MobilePhone $MobilePhone `
            -EmailAddress $EmailAddress `
            -Path $OU `
            -AccountPassword (ConvertTo-SecureString $AccountPassword -AsPlainText -Force) 
	}
}