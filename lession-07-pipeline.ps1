$serviceName = "Spooler"

Get-Service -Name $serviceName

Start-Service -Name $serviceName

Get-Help Stop-Service -Full

(Get-Service -Name $serviceName).GetType() # service contoller

Get-Service -Name $serviceName | Stop-Service

Get-Service -Name $serviceName

Get-Service -Name $serviceName | Start-Service

Get-Service -Name $serviceName 

$serviceName | Get-Service | Stop-Service

$serviceName | Get-Service 
Write-Host "------------------------------------------------"
$services = New-Object -TypeName System.Collections.ArrayList
$services.AddRange(@("spooler","w32time"))

$services | Get-Service

$services | Get-Service | Start-Service

$services | Get-Service

$services | Get-Service | ForEach-Object{
    Write-Output "Service: $($_.displayname) is currently $($_.status)"
}