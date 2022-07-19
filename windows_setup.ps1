#Requires -RunAsAdministrator

#region bootstrap windows
$scriptpath = "$PSScriptRoot\scripts\"

& $scriptpath\"setup\system_restore_configuration.ps1"
$description = "Before windows-setup was run on " + (Get-Date -Format "dd-MM-yyyy HH:mm")
Checkpoint-Computer -Description $description -RestorePointType "MODIFY_SETTINGS" | Out-Null
Get-ComputerRestorePoint

$scripts = @{
    "Adjusting settings and features" = "setup\settings_and_features.ps1"
    "Managing Applications"           = "applications\add_or_remove_apps.ps1"
}
$progress = 1
foreach ($script in $scripts.GetEnumerator()) {
    Write-Progress -Activity "Setting up windows" -Status "$($script.name)" -Id 1 -PercentComplete ($progress / $scripts.count * 100)
    & $scriptpath\$($script.value) | Out-Null #will wait to finish the current script
    $progress++
}
#endregion
