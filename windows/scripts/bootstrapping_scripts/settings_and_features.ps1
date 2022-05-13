#region Explorer
$Path = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
$Explorer = @{
    'HideFileExt'     = 0
    'Hidden'          = 1
    'AutoCheckSelect' = 1
}
foreach ($property in $Explorer.GetEnumerator()) {
    New-Itemproperty -path $path -Name $($property.Name) -PropertyType DWord -value $($property.Value) -Force
}
#endregion

#region Theme
$Path = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize"
$Personalization = @{
    'AppsUseLightTheme'    = 0
    'ColorPrevalence'      = 1
    'EnableTransparency'   = 1
    'SystemUsesLightTheme' = 0
}
foreach ($property in $Personalization.GetEnumerator()) {
    New-Itemproperty -path $path -Name $($property.Name) -PropertyType DWord -value $($property.Value) -Force
}
#endregion

Stop-Process -processName: Explorer

#region Features
$features = @(
    'Microsoft-Hyper-V', 
    'Containers-DisposableClientVM' #windows sandbox
    'HypervisorPlatform'
)

$progress = 1
foreach ($feature in $features) {
    Write-Progress -Activity "Enabling Features" -Status "$feature" -Id 2 -ParentId 1 -PercentComplete ($progress / ($features.count + 1) * 100)
    Enable-WindowsOptionalFeature -Online -FeatureName $feature -All -NoRestart -ErrorAction SilentlyContinue | Out-Null
    $progress++
}

Write-Progress -Activity "Enabling Features" -Status "WSL2" -Id 2 -ParentId 1 -PercentComplete 100
wsl.exe --install
#endregion