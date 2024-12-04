1 -eq 2 # 1 is equal to 2 => false
1 -eq 1 # 1 is equal to 1 => true
1 -ne 3 # 1 is not equal to 3 => true
1 -lt 2 # 1 is less than 2 => true
2 -lt 2 # 2 is less than 2 => false
2 -le 2 # 2 is less equals to 2 => true
3 -le 2 # 2 is less equals to 2 => false
3 -gt 1 # 3 is greater than 1 => true
3 -gt 10 # 3 is greater than 10 => false
2 -ge 2 # 2 is greater or equals to 2 => true
2 -ge 20 # 2 is greater or equals to 20 => false

Write-Host "----------------------------------"
@(1,2,3) -contains 2 # true
@(1,2,3) -contains 4 # false

Write-Host "----------------------------------"
@("test", "Test") -contains "TEST" # true này không check hoa thường
@("test", "Test") -ccontains "TEST" # false này check hoa thường
@("test", "Test", "TEST") -ccontains "TEST" # true này check hoa thường

Write-Host "----------------------------------"
"Test" -eq "TEST" # true
"Test" -ceq "TEST" # false

Write-Host "----------------------------------"
$filePath = "C:\Users\PC\Desktop\Powershell\data\test.txt"
Test-Path -Path $filePath # true
# $filePath = "C:\Users\PC\Desktop\Powershell\data\test1.txt"
# Test-Path -Path $filePath # false

Write-Host "----------------------------------"
if (Test-Path -Path $filePath) {
    Write-Output "Files existed!"
    $data = Get-Content -Path $filePath
    if ($data.Count -lt 2) {
        Write-Output "This file has less than 2 lines"
    } elseif ($data.Count -lt 4) {
        Write-Output "This file has less than 4 but at least 2"
    } else {
        Write-Output "This file has 4 or more lines"
    }
} else {
    Write-Output "Files '$filePath' does not existed!"
}