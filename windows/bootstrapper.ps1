#Requires -RunAsAdministrator

#region bootstrap windows
$scripts = @(
    "winget_init.ps1"
    "cleanup_scripts_scheduler.ps1"
)
foreach ($script in $scripts) {
    & $PSScriptRoot\scripts\$script
}
#endregion