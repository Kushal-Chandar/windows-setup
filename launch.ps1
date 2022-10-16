#Requires -RunAsAdministrator

try {
    wt.exe -p "Windows Powershell" -d "$PSScriptRoot" Powershell.exe -Command "$PSScriptRoot\scripts\windows_setup.ps1"
}
catch {
    Powershell.exe -Command "$PSScriptRoot\scripts\windows_setup.ps1"
}
