$employee1 = New-Object -TypeName pscustomobject

$employee1.GetType()

Add-Member -InputObject $employee1 -MemberType NoteProperty -Name "EmployeeID" -Value "SE130403"
Add-Member -InputObject $employee1 -MemberType NoteProperty -Name "EmployeeSalary" -Value 1000
Add-Member -InputObject $employee1 -MemberType NoteProperty -Name "Age" -Value 26
$employee1
$employee1.Age
$employee1.EmployeeID
$employee1.EmployeeSalary

Write-Host "-----------Change Value Object--------------"
$employee1.Age = 10
$employee1

Write-Host "-----------Get All Property And Method Object--------------"
Get-Member -InputObject $employee1

Write-Host "-----------Add New Object--------------"
$employee2 = [PSCustomObject]@{
    EmployeeID = "SE15462"
    EmployeeSalary = 1500
    Age = 30
}

$employee2
