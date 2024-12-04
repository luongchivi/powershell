$($env:PSModulePath).Split(';')

# Get-Module -ListAvailable

Import-Module -Name ScheduledTasks

Get-Module

Get-Command -Module ScheduledTasks

Get-ScheduledTask

Remove-Module ScheduledTasks

Get-Module

Import-Module -Name ScheduledTasks -Force # cập nhập mới từ internet module ScheduledTasks

Find-Module -Name AzureAD

Install-Module -Name AzureAD

Import-Module AzureAD

# mở cmd chạy dưới quyền admin mới remove dc 2 lệnh dưới
Remove-Module AzureAD
Uninstall-Module -Name AzureAD