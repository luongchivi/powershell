param (
    $computerName,
    $credentials
)

Describe "Checking deployment" {
    Context "Checking windows services" {
        It "Making sure the print spooler is running" {
            $Service = Invoke-Command -ComputerName $computerName -Credential $credentials -ScriptBlock {
                Get-Service Spooler
            }
            $Service.status | Should be "Running"
        }
    }
}