function Get-Configuration {
    <#
        .DESCRIPTION
        This is the description for the get configuration cmdlet written by LuongChiVi
    
        .EXAMPLE
        Get-Configuration
        This will return all configurations

        .EXAMPLE
        Get-Configuration -Name "Test"
        This will return Configurations with the name of "Test"

        .LINK
        This is a link to my github
    #>
    [CmdletBinding()]
    param ()

    Write-Output "Get Configuration function"
}

function Set-Configuration {
    [CmdletBinding()]
    param ()

    Write-Output "Set Configuration function"
}