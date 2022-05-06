Write-Progress -Id 2 -ParentId 1 -Activity "Installing Winget" -Status "Setup Running" -PercentComplete 0
Start-Process -FilePath "powershell.exe" -Verb RunAs -Wait `
    -ArgumentList "-File $PSScriptRoot\winget_setup\install_winget.ps1"
Write-Progress -Id 2 -ParentId 1 -Activity "Installing Winget" -Status "Setup Complete" -PercentComplete 100

$env:Path = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";" `
    + [System.Environment]::GetEnvironmentVariable("Path", "User") # refresh environment variable

& $PSScriptRoot\winget_setup\settings_winget.ps1
Write-Progress -Id 2 -ParentId 1 -Activity "Installing Winget" -Status "Settings Applied" -PercentComplete 100
Start-Sleep -Milliseconds 500