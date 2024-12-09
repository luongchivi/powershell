$pathOwnModule = "C:\Users\chivi\OneDrive\Desktop\powershell\Configurations\Configurations.psd1"
$authorOwnModule = "LuongChiVi"
$descriptionOwnModule = "This is the configuration module"
$moduleVersion = "1.0.0"
$rootModule = "C:\Users\chivi\OneDrive\Desktop\powershell\Configurations\Configurations.psm1"
New-ModuleManifest -Path $pathOwnModule -RootModule $rootModule -Author $authorOwnModule -Description $descriptionOwnModule -ModuleVersion $moduleVersion

$($env:PSModulePath).Split(';')

Get-Configuration

# nếu có thay đổi trong own module thì chúng t muốn import tự động cập nhập thì phải dùng -Force để đọc lại module
# reloading bằng -Force
Import-Module "C:\Users\chivi\OneDrive\Desktop\powershell\Configurations" -Force 

Remove-Module Configurations

Get-Help Get-Configuration -Full