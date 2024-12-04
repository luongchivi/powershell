$filePath = "C:\Users\PC\Desktop\Powershell\data\folderNames.txt"
$folderPath = "C:\Users\PC\Desktop\Powershell\data\Share"
if (Test-Path -Path $filePath) {
    Write-Output "Files $filePath is existed!"
    $folderNames = Get-Content -Path $filePath
} else {
    Write-Output "Files $filePath is not existed!"
}

Write-Output "----------------Create List Folders----------------"
foreach ($name in $folderNames) {
    $existedPath = Test-Path -Path "$folderPath\$name"
    if ($existedPath -eq $false) {
        New-Item -Path $folderPath -Name $name -ItemType Directory | Out-Null
        Write-Output "Created folder: $name"
    } else {
        Write-Output "Folder already exists: $name"
    }
}

Write-Output "--------------------------------"
$folderNames | ForEach-Object -Process {
    Write-Output "$_"
}

Write-Output "----------------Create List Folders using Object----------------"
$folderNames | ForEach-Object -Process {
    $existedPath = Test-Path -Path "$folderPath\$_"
    if ($existedPath -eq $false) {
        New-Item -Path $folderPath -Name $_ -ItemType Directory | Out-Null
        Write-Output "Created folder: $_"
    } else {
        Write-Output "Folder already exists: $_"
    }
}

Write-Output "---------------------------"
$folderNames.ForEach(
    {
        Write-Output "$_"
    }
)

Write-Output "--------------Delete folder in txt file-------------"
$folderNames.ForEach(
    {
        $fullPath = "$folderPath\$_"
        if (Test-Path -Path $fullPath) {
            Remove-Item -Path $fullPath -Recurse -Force
            Write-Output "Deleted folder: $_"
        } else {
            Write-Output "Folder does not exisr: $_"
        }
    }
)