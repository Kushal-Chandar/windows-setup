Add-Type -AssemblyName PresentationFramework # To Display AlertBoxes

#region Explorer
$Path = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
$Explorer = @{
    'HideFileExt'        = 0
    'Hidden'             = 1
    'AutoCheckSelect'    = 1
    'ShowTaskViewButton' = 0
    'LaunchTo'           = 1
    'Start_TrackProgs'   = 0
    'Start_TrackDocs'    = 0
    'TaskbarMn'          = 0
    'TaskbarDa'          = 0 # Widgets
    'Start_Layout'       = 1
}
foreach ($property in $Explorer.GetEnumerator()) {
    New-Itemproperty -Path $Path -Name $($property.Name) -PropertyType DWord -Value $($property.Value) -Force | Out-Null
}
If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager")) {
    New-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" -Force | Out-Null
}
New-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" -Name "EnthusiastMode" -PropertyType DWord -Value 1 -Force | Out-Null
#endregion

#region TaskBar
If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People")) {
    New-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" -Force | Out-Null
}
New-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" -Name "PeopleBand" -PropertyType DWord -Value 0 -Force | Out-Null
New-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" -Name "SearchboxTaskbarMode" -PropertyType Dword -Value 0 -Force | Out-Null
If (!(Test-Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds")) {
    New-Item -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" -Force | Out-Null
}
New-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" -Name "EnableFeeds" -PropertyType DWord -Value 0 -Force | Out-Null
New-ItemProperty -Path  "HKCU:\Software\Microsoft\Windows\CurrentVersion\Feeds" -Name "ShellFeedsTaskbarViewMode" -PropertyType DWord -Value 2 -Force | Out-Null
If (!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer")) {
    New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Force | Out-Null
}
New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "HideSCAMeetNow" -PropertyType DWord -Value 1 -Force | Out-Null
If (!(Test-Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer")) {
    New-Item -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Force | Out-Null
}
New-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "NoRecentDocsHistory" -PropertyType DWord -Value 1 -Force | Out-Null
#endregion

#region Widgets
If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Dsh")) {
    New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Dsh" -Force | Out-Null
}
New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Dsh" -Name "AllowNewsAndInterests" -PropertyType DWord -Value 0 -Force | Out-Null
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
    New-Itemproperty -Path $Path -Name $($property.Name) -PropertyType DWord -Value $($property.Value) -Force | Out-Null
}
New-Itemproperty -Path "HKCU:\Software\Microsoft\Windows\DWM" -Name "ColorPrevalence" -PropertyType DWord -Value 1 -Force | Out-Null
$Path = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Accent"
$Personalization = @{
    'AccentColorMenu'      = '0xff484a4c'
    'MotionAccentId_v1.00' = '0x000000db'
    'StartColorMenu'       = '0xff333536'
}
foreach ($property in $Personalization.GetEnumerator()) {
    New-Itemproperty -Path $Path -Name $($property.Name) -PropertyType DWord -Value $($property.Value) -Force | Out-Null
}
New-Itemproperty -Path $Path -Name 'AccentPalette' -PropertyType Binary -Value ([byte[]](0x9b, 0x9a, 0x99, 0x00, 0x84, 0x83, 0x81, 0x00, 0x6d, 0x6b, 0x6a, 0x00, 0x4c, 0x4a, 0x48, 0x00, 0x36, 0x35, 0x33, 0x00, 0x26, 0x25, 0x24, 0x00, 0x19, 0x19, 0x19, 0x00, 0x10, 0x7c, 0x10, 0x00)) -Force | Out-Null
#endregion

#region Mouse
$Path = "HKCU:\Control Panel\Mouse"
$Mouse = @{
    'MouseSensitivity' = 10
    'MouseSpeed'       = 0
    'MouseThreshold1'  = 0
    'MouseThreshold2'  = 0
    'MouseHoverTime'   = 30
}
foreach ($property in $Mouse.GetEnumerator()) {
    New-Itemproperty -Path $Path -Name $($property.Name) -PropertyType String -Value $($property.Value) -Force | Out-Null
}
#endregion

#region Desktop
New-Itemproperty -Path "HKCU:\Control Panel\Desktop" -Name "MenuShowDelay" -PropertyType String -Value 0 -Force | Out-Null
New-Itemproperty -Path "HKCU:\Control Panel\Desktop" -Name "AutoColorization" -PropertyType DWord -Value 0 -Force | Out-Null
$Path = "HKLM:\SOFTWARE\Microsoft\PolicyManager\current\device\Stickers"
If (!(Test-Path $Path)) {
    New-Item -Path $Path -Force | Out-Null
    
}
New-ItemProperty -Path $Path -Type DWord -Name "EnableStickers" -Value 0 -Force | Out-Null
#endregion

#region Hibernation
New-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Session Manager\Power" -Name "HibernteEnabled" -PropertyType Dword -Value 0 -Force | Out-Null
If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings")) {
    New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" -Force | Out-Null
}
New-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" -Name "ShowHibernateOption" -PropertyType Dword -Value 0 -Force | Out-Null
#endregion

#region Privacy Settings
If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization")) {
    New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" -Force | Out-Null
}
New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" -Name "DODownloadMode" -PropertyType DWord -Value 1 -Force | Out-Null
Set-WindowsSearchSetting -EnableWebResultsSetting $false
New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\SearchSettings" -Name "IsDeviceSearchHistoryEnabled" -PropertyType DWord -Value 0 -Force | Out-Null
New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\SearchSettings" -Name "IsDynamicSearchBoxEnabled" -PropertyType DWord -Value 0 -Force | Out-Null
If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer")) {
    New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Force | Out-Null
}
New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Name "ShowOrHideMostUsedApps" -PropertyType DWord -Value 2 -Force | Out-Null
Start-Process ms-settings:personalization-start #disable apps displayed in recommended section
[System.Windows.MessageBox]::Show("Disable: Show recently added apps.`n`nClicking `"OK`" will continue the script") | Out-Null
Start-Process ms-settings:personalization-start-places
[System.Windows.MessageBox]::Show("Enable items shown beside power button in start`n`nEnable: Settings.`nEnable: File Explorer.`n`nClicking `"OK`" will continue the script") | Out-Null
Start-Process ms-settings:search-permissions
[System.Windows.MessageBox]::Show("Disable items under `"Cloud content search`"`n`nDisable: Microsoft Account.`nDisable: Work or School Account.`n`nClicking `"OK`" will continue the script") | Out-Null
New-ItemProperty -Path "HKCU:\Control Panel\International\User Profile" -Name "HttpAcceptLanguageOptOut" -PropertyType DWord -Value 1 -Force | Out-Null
If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Input\TIPC")) {
    New-Item -Path "HKCU:\SOFTWARE\Microsoft\Input\TIPC" -Force | Out-Null
}
New-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Input\TIPC" -Name "Enabled" -PropertyType DWord -Value 0 -Force | Out-Null
If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search")) {
    New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search"  -Force | Out-Null
}
New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Name "AllowCortana" -PropertyType DWord -Value 0 -Force | Out-Null
If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync")) {
    New-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync" -Force | Out-Null
}
$Path = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync"
$SettingSync = @{
    'BackupPolicy'           = 0x3c
    'DeviceMetadataUploaded' = 0
    'PriorLogons'            = 1
}
foreach ($property in $SettingSync.GetEnumerator()) {
    New-Itemproperty -Path $Path -Name $($property.Name) -PropertyType DWord -Value $($property.Value) -Force | Out-Null
}
$Groups = @(
    'Accessibility'
    'AppSync'
    'BrowserSettings'
    'Credentials'
    'DesktopTheme'
    'Language'
    'PackageState'
    'Personalization'
    'StartLayout'
    'Windows'
)
If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups")) {
    New-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups" -Force | Out-Null
}
foreach ($Group in $Groups) {
    $GroupPath = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\" + $Group
    If (!(Test-Path $GroupPath)) {
        New-Item -Path $GroupPath -Force | Out-Null
    }
    New-ItemProperty -Path $GroupPath -Name "Enabled" -PropertyType DWord -Value 0 -Force | Out-Null
}
If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Personalization\Settings")) {
    New-Item -Path "HKCU:\SOFTWARE\Microsoft\Personalization\Settings" -Force | Out-Null
}
New-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Personalization\Settings" -Name "AcceptedPrivacyPolicy" -PropertyType DWord -Value 0 -Force | Out-Null
$Path = "HKCU:\SOFTWARE\Microsoft\InputPersonalization"
$InputPersonalization = @{
    'RestrictImplicitInkCollection'  = 1
    'RestrictImplicitTextCollection' = 1
    'PreventHandwritingErrorReports' = 1
    'PreventHandwritingDataSharing'  = 1
}
foreach ($property in $InputPersonalization.GetEnumerator()) {
    New-Itemproperty -Path $Path -Name $($property.Name) -PropertyType DWord -Value $($property.Value) -Force | Out-Null
}
foreach ($key in (Get-ChildItem "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications")) {
    New-ItemProperty -Path ("HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications\" + $key.PSChildName) -Name "Disabled" -PropertyType DWord -Value 1 -Force | Out-Null
}
$PATH = "HKLM:\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\"
$Groups = @(
    'activity'
    'appDiagnostics'
    'appointments'
    'bluetooth'
    'bluetoothSync'
    'broadFileSystemAccess'
    'cellularData'
    'chat'
    'contacts'
    'documentsLibrary'
    'email'
    'gazeInput'
    'humanInterfaceDevice'
    'location'
    # 'microphone'
    'phoneCall'
    'phoneCallHistory'
    'picturesLibrary'
    'radios'
    'sensors.custom'
    'serialCommunication'
    'usb'
    'userAccountInformation'
    'userDataTasks'
    'userNotificationListener'
    'videosLibrary'
    # 'webcam'
    'wifiData'
    'wiFiDirect'
)
foreach ($Group in $Groups) {
    $GroupPath = $Path + $Group
    If (!(Test-Path $GroupPath)) {
        New-Item -Path $GroupPath -Force | Out-Null
    }
    New-ItemProperty -Path $GroupPath -Name "Value" -PropertyType String -Value "Deny" -Force | Out-Null
}
New-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" -Name "SensorPermissionState" -PropertyType DWord -Value 0 -Force | Out-Null
New-ItemProperty -Path "HKLM:\SYSTEM\Maps" -Name "AutoUpdateEnabled" -Type DWord -Value 0 -Force | Out-Null

If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\WindowsStore")) {
    New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\WindowsStore" -Force | Out-Null
}
New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\WindowsStore" -Type DWord -Name "AutoDownload" -Value 2 -Force | Out-Null  # prevents auto update
#endregion

#region Classic Context Menu
$Path = "HKCU:\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}"
If (!(Test-Path $Path)) {
    New-Item -Path $Path -Force | Out-Null
}
$Path = "HKCU:\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32"
If (!(Test-Path $Path)) {
    New-Item -Path $Path -Force | Out-Null
}
#endregion

Stop-Process -processName: Explorer

#region Features
Remove-Printer -Name Fax
Disable-WindowsOptionalFeature -Online -FeatureName "Printing-XPSServices-Features" -NoRestart -WarningAction SilentlyContinue | Out-Null
$features = @(
    'Microsoft-Hyper-V-All'
    'Microsoft-Hyper-V-Tools-All'
    'HypervisorPlatform'
    'Microsoft-Hyper-V'
    'Microsoft-Hyper-V-Management-PowerShell'
    'Microsoft-Hyper-V-Hypervisor'
    'Microsoft-Hyper-V-Services'
    'Microsoft-Hyper-V-Management-Clients'
    'Containers-DisposableClientVM' #windows sandbox
)
$progress = 1
foreach ($feature in $features) {
    Write-Progress -Activity "Enabling Features" -Status "$feature" -Id 2 -ParentId 1 -PercentComplete ($progress / ($features.count + 1) * 100)
    Enable-WindowsOptionalFeature -Online -FeatureName $feature -All -NoRestart -ErrorAction SilentlyContinue
    $progress++
}
Write-Progress -Activity "Enabling Features" -Status "WSL2" -Id 2 -ParentId 1 -PercentComplete 100
wsl.exe --install
#endregion