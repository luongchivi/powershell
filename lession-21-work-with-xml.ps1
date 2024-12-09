$xmlFilePath = "C:\Users\chivi\OneDrive\Desktop\powershell\data\employees.xml"

# Dùng [xml] để xử lý file XML thông thường.
[xml]$xmlData = Get-Content -Path $xmlFilePath
$employees = $xmlData.company.employees.employee
$companyName = $xmlData.company.name
$location = $xmlData.company.location

foreach ($employee in $employees) {
    Write-Output "$($employee.id) - $($employee.name) - $($employee.position)"
}

# Chỉ dùng Import-Clixml nếu file XML được tạo bằng Export-Clixml.
$xmlFilePath = "C:\Users\chivi\OneDrive\Desktop\powershell\data\get-service-spooler.xml"
Get-Service Spooler | Export-Clixml -Path $xmlFilePath

$serviceData = Import-Clixml -Path $xmlFilePath
$serviceData