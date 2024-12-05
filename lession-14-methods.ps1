function Create-Configuration {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory, ValueFromPipeline)]
        [string]$Name,

        [Parameter()]
        [string]$Version = "1.0.0",

        [Parameter(Mandatory)]
        [string]$Path,

        [Parameter()]
        [ValidateSet("Linux", "Windows")]
        [string]$OperatingSystem = "Windows"
    )

    begin {
        Write-Output "Begin block"
        $couterPassed = 0
        $couterFailed =0
    }

    process {
        try {
            Write-Output "Creating configuration for $Name with version $Version"

            $configFilePath = "$Path\$($Name).cfg"
            
            # if (Test-Path -Path $configFilePath) {
            #     Write-Output "This `"$configFilePath`" already exists! Overriding properties in file `"$($Name).cfg`"."
            # } else {
            #     New-Item -Path $Path -Name "$($Name).cfg" -ItemType File
            #     Write-Output "Creating `"$configFilePath`" successfully!"
            # }

            New-Item -Path $Path -Name "$($Name).cfg" -ItemType File -ErrorAction Stop
            Write-Output "Creating `"$configFilePath`" successfully!"
    
            # Tạo cấu trúc nội dung cho tệp cấu hình
            $configContent = @(
                "$Name"
                "$Version"
                "$OperatingSystem"
            )
    
            # Ghi toàn bộ nội dung vào tệp (ghi đè)
            Set-Content -Path $configFilePath -Value $configContent -Force
            $couterPassed++
        } catch {
            Write-Output $_.Exception.Message
            $couterFailed++
        }
    }

    end {
        Write-Output "End block"
        Write-Output "Configuration created: $couterPassed"
        Write-Output "Configuration failed: $couterFailed"
    }
}

# Đường dẫn tới thư mục chứa cấu hình
$configPath = "C:\Users\chivi\OneDrive\Desktop\powershell\config"

# Tạo cấu hình cho testConfig0
Create-Configuration -Name "testConfig0" -Version "3.0.1" -Path $configPath -OperatingSystem "Windows"

# Tạo cấu hình cho nhiều tệp với pipeline
$Names = @("TestConfig1", "TestConfig2", "TestConfig3", "TestConfig4")
$Names | Create-Configuration -Path $configPath

$PSVersionTable.PSVersion