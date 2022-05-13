#Requires -RunAsAdministrator

#region bootstrap windows
$scriptpath = "$PSScriptRoot\scripts\bootstrapping_scripts"

& $scriptpath\"system_restore_configuration.ps1"
Checkpoint-Computer -Description "Before bootstrapper.ps1 was run" -RestorePointType "MODIFY_SETTINGS" | Out-Null
Get-ComputerRestorePoint

$scripts = @{
    "Setting up winget"               = "winget_init.ps1"
    "Adjusting settings and features" = "settings_and_features.ps1"
}
$progress = 1
foreach ($script in $scripts.GetEnumerator()) {
    Write-Progress -Activity "Setting up windows" -Status "$($script.name)" -Id 1 -PercentComplete ($progress / $scripts.count * 100)
    & $scriptpath\$($script.value) | Out-Null #will wait to finish the current script
    $progress++
}
#endregion