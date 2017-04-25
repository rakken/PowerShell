$hostList = Get-DnsServerResourceRecord -ComputerName 10.36.8.116 -ZoneName dtc.rccad.net -RRType A | Select hostname -ExpandProperty hostname
Write-Host "Started Pinging..."

foreach ($Server in $hostList){

	If (Test-Connection $Server.hostname -Quiet -Count 2){
Write-Host "pinging $Server" -ForegroundColor "Green"
	}
	Else{
Write-Host "pinging $Server" -ForegroundColor "red"
	} | Export-CSV C:\Temp\EntriesDown.csv
} 

Write-Host "Pinging Completed."