# Invoke-Pester (.\lession-17-pester-test.ps1 -computerName HPV2022 -credentials (Get-Credential))

# Define parameters for the Pester script
$scriptParameters = @{
    Path       = "C:\Users\chivi\OneDrive\Desktop\powershell\lession-17-pester-test.ps1"
    Parameters = @{
        computerName = "HPV2022"
        credentials  = Get-Credential
    }    
}

# Invoke Pester with the script and parameters
Invoke-Pester -Script $scriptParameters -OutputFile "C:\Users\chivi\OneDrive\Desktop\powershell\data\output.xml" -OutputFormat NUnitXml
