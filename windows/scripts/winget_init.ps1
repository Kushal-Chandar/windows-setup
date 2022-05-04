Invoke-Expression "cmd /c start powershell -NoExit -File $PSScriptRoot\winget_setup\install_winget.ps1"
# how to make script wait
# refresh environment variable
& $PSScriptRoot\winget_setup\settings_winget.ps1