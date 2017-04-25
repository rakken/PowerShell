############################################################################################
# Project 		: Nano Server IIS
# Date	 		: 26.01.2017
# By 			: Droux Christophe
# For			: Richemont SA - DTC Fribourg
# Version 		: 1.2.0 Prod
# Description 	: Create Nono server
# Update 		: 
# Remark 		:
############################################################################################


# Import New-NanoServerImage PowerShell Module for Technical Preview 4
Import-Module `
    -Global C:\Nano\NanoServerImageGenerator ;


# Create New Basic NanoServer Image with IIS for Technical Preview 4 with IIS and ReverseForwarders Package
New-NanoServerImage `
    -AdministratorPassword (ConvertTo-SecureString -String "LaboWindows1" -AsPlainText -Force)`
    -DeploymentType Guest `
    -Edition Standard  `
    -MediaPath f:\ `
    -TargetPath C:\Nano\VirtualDisk\NanoIIS.vhd  `
    -ComputerName NanoIIS  `
    -InterfaceNameOrIndex Ethernet `
    -Ipv4Address 192.168.1.216 `
    -Ipv4Dns 192.168.1.212 `
    -Ipv4Gateway 192.168.1.1 `
    -Ipv4SubnetMask 255.255.255.0 `
    -Package Microsoft-NanoServer-IIS-Package `
    -EnableRemoteManagementPort