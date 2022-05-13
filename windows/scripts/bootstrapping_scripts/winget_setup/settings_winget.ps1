$settings = "settings.json"
$current_settings_path = "$PSScriptRoot\$settings"
$winget_settings_path = "$env:USERPROFILE\AppData\Local\Packages\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe\LocalState\$settings"
Remove-Item -Path $winget_settings_path -Force -Confirm:$false -ErrorAction SilentlyContinue
New-Item -ItemType SymbolicLink -Path $winget_settings_path -Target $current_settings_path
winget settings