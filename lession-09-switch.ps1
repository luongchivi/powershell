$filePath = "C:\Users\PC\Desktop\Powershell\data\test1.txt"
if (Test-Path -Path $filePath) {
    Write-Output "Files $filePath is existed!"
    $data = Get-Content -Path $filePath
} else {
    Write-Output "Files $filePath is not existed!"
}

Write-Host "----------------------------------"
$data.Count
$firstName = $data[0]

Write-Host "----------------------------------"
if ($firstName -eq "Boob") {
    Write-Output "My name is Boob"
} elseif ($firstName -eq "Foo") {
    Write-Output "My name is Foo"
} elseif ($firstName -eq "Fang") {
    Write-Output "My name is Fang"
} elseif ($firstName -eq "Rip") {
    Write-Output "My name is Rip"
} elseif ($firstName -eq "Loo") {
    Write-Output "My name is Loo"
} else {
    Write-Output "I don't know my name!"
}

Write-Host "----------------------------------"
switch ($firstName) {
    "Boob" { 
        Write-Output "My name is Boob"
        break
    }
    "Foo" { 
        Write-Output "My name is Foo"
        break
    }
    "Fang" { 
        Write-Output "My name is Fang"
        break
    }
    "Rip" { 
        Write-Output "My name is Rip"
        break
    }
    "Loo" { 
        Write-Output "My name is Loo"
        break
    }
    Default {
        Write-Output "I don't know my name!"
    }
}

Write-Host "----------------------------------"
if ($firstName -eq "Boob") {
    Write-Output "My name is Boob"
} elseif ($firstName -eq "Foo") {
    Write-Output "My name is Foo"
} elseif ($firstName -eq "Fang") {
    Write-Output "My name is Fang"
} elseif ($firstName -eq "Rip") {
    Write-Output "My name is Rip"
} elseif ($firstName -eq "Loo") {
    Write-Output "My name is Loo"
} else {
    Write-Output "I don't know my name!"
}

Write-Host "----------------------------------"
switch ($data.Count) {
    {$_ -eq 2} { 
        Write-Output "Lines is 2"
        break
    }
    {$_ -in (2..7)} { 
        Write-Output "Lines is range 2 to 7"
        break
    }
    {$_ -gt 10} { 
        Write-Output "Lines is greater than 10"
        break
    }
    Default {
        Write-Output "This file has 10 or fewer lines"
    }
}
