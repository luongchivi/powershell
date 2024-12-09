$env:COMPUTERNAME
$env:USERNAME

$creds = Get-Credential

# Enable-PSRemoting
# Set-Item WSMan:\localhost\Client\TrustedHosts -Value "192.168.1.13"
# Get-Item WSMan:\localhost\Client\TrustedHosts

Invoke-Command -ComputerName "HPV2022" -Credential $creds -ScriptBlock {
    $env:COMPUTERNAME
}

# Get-Item WSMan:\localhost\Client\TrustedHosts 
# Set-Item WSMan:\localhost\Client\TrustedHosts -Value "HPV2022" -Concatenate -Confirm:$false


$Session = New-PSSession -ComputerName HPV2022 -Credential administrator
Enter-PSSession -Session $Session