#########################################################################
#          Script - Configurador inicial Windows Server 2016            #
#   ------------------------------------------------------------------  #
#   Autor:      SERCADEL                                                #
#   Fecha:      10-11-2018                                              #
#   Versión:    1.2                                                     #
#   ------------------------------------------------------------------  #
#   Curso:      2º ASIR                                                 #
#   Asignatura: ADSO                                                    #
#########################################################################

Clear-Host

# Renombrar el equipo
Rename-Computer -NewName "servlizarreria"

# Eliminar la configuración de IPs estáticas de las interfaces de red (incluye los servidores DNS)
get-netadapter –name * | Remove-NetIPAddress -Confirm:$false

# Eliminar la configuración de puertas de enlace de las interfaces de red.
get-netadapter –name * | Remove-NetRoute -Confirm:$false

# Establecer IP estática en el adaptador de red INTERNA.
get-netadapter –name Ethernet1 | new-netipaddress –addressfamily IPv4 –ipaddress 192.168.1.1 –prefixlength 24 –type unicast –defaultgateway 192.168.1.1

# Establecer IP DNS cliente para el adaptador de red INTERNA
get-netadapter –name Ethernet1 | set-dnsclientserveraddress –serveraddresses 192.168.1.1

# Deshabilitar IPv6 de los adaptadores de red
get-netadapter –name * | Disable-NetAdapterBinding -ComponentID ms_tcpip6

# Deshabilitar Windows Update
New-ItemProperty -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU' -Name 'NoAutoUpdate' -Value 1

# Desinstalar Windows Defender
Uninstall-WindowsFeature -Name Windows-Defender -confirm:$false

# Quitar la imagen de fondo del login
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System' -Name 'DisableLogonBackgroundImage' -Value '1'

# Deshabilitar firewall
Get-NetFirewallProfile | Set-NetFirewallProfile –Enabled False

# Cambiar las imagenes por defecto de perfil
get-childitem -path .\ImagenPerfil\* -include *.png, *.bmp | copy-item -destination "C:\ProgramData\Microsoft\User Account Pictures" -force

##################################################################################################################################################
##################################################################################################################################################

# Reiniciar equipo
Restart-Computer -force