#todo : Add progress bar
Invoke-Expression "cmd /c start powershell -NoExit -File $PSScriptRoot\winget_setup\install_winget.ps1"
# todo: make script wait using job
# refresh environment variable
& $PSScriptRoot\winget_setup\settings_winget.ps1