Get-DnsServerResourceRecord -ComputerName 10.36.8.116 -ZoneName dtc.rccad.net -RRType A | select hostname | Out-File C:\Temp\Server.txt
Write-Host "Started Pinging..."
GC C:\Temp\Server.txt | %{
	If (Test-Connection $_.Trim() -Quiet -Count 2){
Write-Host "pinging $_" -ForegroundColor "Green"
	}
	Else{
Write-Host "pinging $_" -ForegroundColor "red"
	"$_" 
	}
} | Out-File C:\Temp\EntriesDown.csv

Write-Host "Pinging Completed."