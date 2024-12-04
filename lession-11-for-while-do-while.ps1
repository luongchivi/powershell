for ($i=0;$i -lt 10;$i+=2) {
    Write-Output $i
} 

# chỉ có for() mới thay đổi được giá trị bên trong
Write-Host "-------------------------------------"
$names = @("John","Tim","Bob")
for ($i = 0; $i -lt $names.Count; $i++) {
    $names[$i] = "$($names[$i]) Doe"
    # Write-Output "$($names[$i]) Doe"
}

Write-Host "-------------------------------------"
$names

# foreach không thay đổi được chỉ real-only
Write-Host "-------------------------------------"
$updatedNames = @()  # Create a new array for the updated names
foreach ($item in $names) {
    $updatedNames += "$item Test"  # Add modified item to the new array
}
Write-Host "Modified names with 'Test':"
$updatedNames


Write-Host "-------------------------------------"
$names

Write-Host "-------------------------------------"
while ((Get-Date).Minute -eq 24) {
    Get-Date
}

Write-Host "-------------------------------------"
while ($true) {
    $input = Read-Host -Prompt "Enter input"
    if ($input -eq "q") {
        Write-Output "Exit programing"
        break
    }
    Write-Output "Result: $input"
}

Write-Host "-------------------------------------"
do {
    Write-Output "1. Function +"
    Write-Output "2. Function -"
    Write-Output "3. Function *"
    Write-Output "4. Function /"
    $inputFunction = Read-Host "Please enter number"
} while (
    $inputFunction -ne "q"
)

Write-Host "-------------------------------------"
do {
    Write-Output "Hi"
} until (
    $true
)