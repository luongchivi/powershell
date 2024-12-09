$scvFilePath = "C:\Users\chivi\OneDrive\Desktop\powershell\data\semitest.csv"
$content = Get-Content -Path $scvFilePath -Delimiter ';'
$content.GetType()

$employeeData = Import-Csv -Path $scvFilePath -Delimiter ';'
$employeeData
$employeeArrayList= New-Object -TypeName System.Collections.ArrayList
[void]$employeeData.ForEach({$employeeArrayList.Add($_)})
$employeeArrayList.ForEach({
    Write-Output "$($_.Id)  $($_.Name) $($_.Title) $($_.Country)"
})

Get-Service | Select-Object -Property Name,DisplayName,Status,StartType,@{Name="Time"; Expression={Get-Date -Format "MM-ddd-yyyy hh:mm"}} | Export-Csv -Path "C:\Users\chivi\OneDrive\Desktop\powershell\data\exportCsv.csv" -Delimiter "," -NoTypeInformation