$jsonFilePath = "C:\Users\chivi\OneDrive\Desktop\powershell\data\employees.json"

$jsonData = Get-Content -Path $jsonFilePath | ConvertFrom-Json
$jsonData.Employees.GetType()

foreach ($employee in $jsonData.Employees) {
    if ($employee.salary -gt 70000) {
        Write-Output "$($employee.id) $($employee.name) $($employee.email) $($employee.position) $($employee.salary)"
    }
}

# Convert json to csv
$csvFilePath = "C:\Users\chivi\OneDrive\Desktop\powershell\data\employees.csv"
$contentCsv = $jsonData.Employees | ConvertTo-Csv 
Set-Content -Path $csvFilePath -Value $contentCsv -Force

# Fetch API and get the results form API
$uri="https://fake-json-api.mock.beeceptor.com/companies"
$webRequest = Invoke-WebRequest -Uri $uri -Method Get
$apiResult = $webRequest.Content
$companies = $apiResult | ConvertFrom-Json

foreach ($company in $companies) {
    $company | Add-Member -MemberType NoteProperty -Name createdAt -Value "$(Get-Date -Format "MM-dd-yyyy hh:mm")"
}
$data = $companies | Where-Object employeeCount -gt 4500 | ConvertTo-Json -Depth 10

$jsonCompanyPath = "C:\Users\chivi\OneDrive\Desktop\powershell\data\company.json"
Set-Content -Path $jsonCompanyPath -Value $data -Force

# Create a json body in api medthod 1
$jsonBody = @"
{
    "EmployeeId": "1",
    "Name": "Luong Chi Vi"
}
"@
$test1 = $jsonBody | ConvertTo-Json
$test1.GetType()

# Create a json body in api medthod 2
$jsonBody2 = New-Object -TypeName PSCustomObject
Add-Member -InputObject $jsonBody2 -MemberType NoteProperty -Name EmployeeId -Value "1"
Add-Member -InputObject $jsonBody2 -MemberType NoteProperty -Name Name -Value "Luong Chi Vi"
$test2 = $jsonBody2 | ConvertTo-Json
$test2.GetType()
