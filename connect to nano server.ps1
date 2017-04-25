Set-Item WSMan:\localhost\Client\TrustedHosts -Value 192.168.1.216 -Concatenate
Enter-PSSession -ComputerName 192.168.1.216 -Credential Administrateur
