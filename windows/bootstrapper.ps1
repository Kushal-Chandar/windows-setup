#Requires -RunAsAdministrator

#region bootstrap windows
$scripts = @{
    "Setting up winget"                        = "winget_init.ps1"
    "Adding cleanup scripts to task scheduler" = "cleanup_scripts_scheduler.ps1"
}
$progress = 1
foreach ($script in $scripts.GetEnumerator()) {
    Write-Progress -Activity "Setting up windows" -Status "$($script.name)" -Id 1 -PercentComplete ($progress / $scripts.count * 100)
    & $PSScriptRoot\scripts\$($script.value)
    Start-Sleep -Milliseconds 500
    $progress++
}
#endregion