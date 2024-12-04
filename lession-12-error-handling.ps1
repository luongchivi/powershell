$ErrorActionPreference = "Stop"

try {
    $filePath = "C:\False"
    $filePath = "C:\Users\PC\Desktop\Powershell\data\Share"
    # $files = Get-ChildItem -Path $filePath -ErrorAction Stop
    $files = Get-ChildItem -Path $filePath
    $files.foreach({
        Write-Output $_.name
    })
    Write-Output "This after error"
}
catch {
    Write-Output $_.Exception.Message
} finally {
    Write-Output "This always running at the end"
}

#$Error[0]