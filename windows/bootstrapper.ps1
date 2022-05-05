#Requires -RunAsAdministrator

#region bootstrap windows
# todo: Add progress bar
$scripts = @{
    "Setting up winget"                        = "winget_init.ps1"
    "Adding cleanup scripts to task scheduler" = "cleanup_scripts_scheduler.ps1"
}
foreach ($script in $scripts.GetEnumerator()) {
    & $PSScriptRoot\scripts\$($script.Value)
}
#endregion