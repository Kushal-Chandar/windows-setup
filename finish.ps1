#Requires -RunAsAdministrator

#region finishing windows setup
$scriptpath = "$PSScriptRoot\scripts\setup"
$scripts = @{
    "Adding cleanup scripts to task scheduler" = "cleanup_scripts_scheduler.ps1"
}
$progress = 1
foreach ($script in $scripts.GetEnumerator()) {
    Write-Progress -Activity "Final Touch" -Status "$($script.name)" -Id 1 -PercentComplete ($progress / $scripts.count * 100)
    & $scriptpath\$($script.value) | Out-Null #will wait to finish the current script
    $progress++
}
#endregion