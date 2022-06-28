Add-Type -AssemblyName PresentationFramework

$AppxPackages = @(Get-AppxPackage -AllUsers | Where-Object { (($_.IsFramework) -ne $true) -and (($_.NonRemovable) -ne $true) } | Sort-Object -Property Name )  
$AppxPackages | ForEach-Object { $_ | Add-Member -MemberType NoteProperty -Name "IsChecked" -Value $false }
$AppxPackagesBase = Get-Content $PSScriptRoot\appx_packages_base.json | ConvertFrom-Json
$AppxPackages | Where-Object { $AppxPackagesBase -Contains $_.Name } | ForEach-Object { $_.IsChecked = $true }

$AppxProvisionedPackages = @(Get-AppxProvisionedPackage -Online | Sort-Object -Property DisplayName)
$AppxProvisionedPackages | ForEach-Object { $_ | Add-Member -MemberType NoteProperty -Name "IsChecked" -Value $false }
$AppxProvisionedPackagesBase = Get-Content $PSScriptRoot\appx_provisioned_packages_base.json | ConvertFrom-Json
$AppxProvisionedPackages | Where-Object { $AppxProvisionedPackagesBase -Contains $_.DisplayName } | ForEach-Object { $_.IsChecked = $true }

$WingetPackagesJson = (Get-Content $PSScriptRoot\winget_install_apps.json -raw) -replace '(?m)(?<=^([^"] | "[^"]*")*)//.*' -replace '(?ms)/\*.*?\*/' | ConvertFrom-Json
$WingetPackages = @($WingetPackagesJson.PSObject.Properties | Select-Object Name, Value)

$inputXML = Get-Content $PSScriptRoot\MainWindow.xaml
$inputXML = $inputXML -replace 'mc:Ignorable="d"', '' -replace "x:N", 'N' -replace '^<Win.*', '<Window'
[xml]$XAML = $inputXML
$XAMLReader = New-Object System.Xml.XmlNodeReader $XAML
$MainWindow = [Windows.Markup.XamlReader]::Load($XAMLReader)

$XAML.SelectNodes("//*[@Name]") | ForEach-Object { Set-Variable -Name "AppsInit$($_.Name)" -Value $MainWindow.FindName($_.Name) }
Get-Variable Apps*

$Script:CounterAppx = 0
$AppxPackagesCheckBoxes = New-Object System.Collections.Generic.List[System.Windows.Controls.CheckBox]
$AppxPackagesStackPanelVisibility = New-Object System.Collections.Generic.List[System.Windows.Controls.StackPanel]
foreach ($AppxPackage in $AppxPackages) {
    $AppxPackageDisplay = ($AppxPackage.Name + "-v" + $AppxPackage.Version + "-" + ($AppxPackage.Architecture.ToString().ToLower()))
    $NewStackPanel = New-Object System.Windows.Controls.StackPanel
    $NewStackPanel.Orientation = "Horizontal"
    $AppxPackagesStackPanelVisibility.Add($NewStackPanel)
    $NewInfoButton = New-Object  System.Windows.Controls.Button
    $NewInfoButton.Style = $MainWindow.TryFindResource("AppsInit.InfoButtonStyle")
    $NewInfoButton.ToolTip = "Click for &quot; $AppxPackageDisplay&quot; package information"
    $NewInfoButton.Add_Click({
            $AppxPackageSerial = [Convert]::ToBase64String([Text.Encoding]::UTF8.GetBytes([Management.Automation.PSSerializer]::Serialize($AppxPackage)))
            $Command = {
                Param($AppxPackageSerial)
                $AppxPackage = [Management.Automation.PSSerializer]::Deserialize([Text.Encoding]::UTF8.GetString([Convert]::FromBase64String($AppxPackageSerial)))
                $AppxPackage
                Write-Host "Close this window manually or press _Enter_ to close window"
                Read-Host
            }
            Start-Process PowerShell -ArgumentList "-NoLogo -NoProfile", "-Command & { $Command }", "-AppxPackageSerial ""$AppxPackageSerial"""
        }.GetNewClosure())
    $NewCheckBox = New-Object  System.Windows.Controls.CheckBox
    $NewCheckBox.IsChecked = ($AppxPackages[$CounterAppx]).IsChecked
    $NewCheckBox.Cursor = "Hand"
    $NewCheckBox.Margin = "5, 0"
    $NewCheckBox.Content = "$AppxPackageDisplay"
    $AppxPackagesCheckBoxes.Add($NewCheckBox)
    $NewStackPanel.AddChild($NewInfoButton)
    $NewStackPanel.AddChild($NewCheckBox)
    $AppsInitStackPanelAppx.AddChild($NewStackPanel)
    $CounterAppx++
}
$AppxPackagesCheckBoxes = $AppxPackagesCheckBoxes.ToArray()
$AppxPackagesStackPanelVisibility = $AppxPackagesStackPanelVisibility.ToArray()

$Script:CounterAppxProvisioned = 0
$AppxProvisionedPackagesCheckBoxes = New-Object System.Collections.Generic.List[System.Windows.Controls.CheckBox]
$AppxProvisionedPackagesStackPanelVisibility = New-Object System.Collections.Generic.List[System.Windows.Controls.StackPanel]
foreach ($AppxProvisionedPackage in $AppxProvisionedPackages) {
    $NewStackPanel = New-Object System.Windows.Controls.StackPanel
    $NewStackPanel.Orientation = "Horizontal"
    $AppxProvisionedPackagesStackPanelVisibility.Add($NewStackPanel)
    $NewInfoButton = New-Object  System.Windows.Controls.Button
    $NewInfoButton.Style = $MainWindow.TryFindResource("AppsInit.InfoButtonStyle")
    $NewInfoButton.ToolTip = "Click for &quot; $($AppxProvisionedPackage.DisplayName)&quot; package information"
    $NewInfoButton.Add_Click({
            $AppxProvisionedPackageSerial = [Convert]::ToBase64String([Text.Encoding]::UTF8.GetBytes([Management.Automation.PSSerializer]::Serialize($AppxProvisionedPackage)))
            $Command = {
                Param($AppxProvisionedPackageSerial)
                $AppxProvisionedPackage = [Management.Automation.PSSerializer]::Deserialize([Text.Encoding]::UTF8.GetString([Convert]::FromBase64String($AppxProvisionedPackageSerial)))
                $AppxProvisionedPackage
                Write-Host "Close this window manually or press _Enter_ to close window"
                Read-Host
            }
            Start-Process PowerShell -ArgumentList "-NoLogo -NoProfile", "-Command & { $Command }", "-AppxProvisionedPackageSerial ""$AppxProvisionedPackageSerial"""
        }.GetNewClosure())
    $NewCheckBox = New-Object  System.Windows.Controls.CheckBox
    $NewCheckBox.IsChecked = ($AppxProvisionedPackages[$CounterAppxProvisioned]).IsChecked
    $NewCheckBox.Cursor = "Hand"
    $NewCheckBox.Margin = "5, 0"
    $NewCheckBox.Content = "$($AppxProvisionedPackage.DisplayName)"
    $AppxProvisionedPackagesCheckBoxes.Add($NewCheckBox)
    $NewStackPanel.AddChild($NewInfoButton)
    $NewStackPanel.AddChild($NewCheckBox)
    $AppsInitStackPanelAppxProvisioned.AddChild($NewStackPanel)
    $CounterAppxProvisioned++
}
$AppxProvisionedPackagesCheckBoxes = $AppxProvisionedPackagesCheckBoxes.ToArray()
$AppxProvisionedPackagesStackPanelVisibility = $AppxProvisionedPackagesStackPanelVisibility.ToArray()


$WingetPackagesCheckBoxes = New-Object System.Collections.Generic.List[System.Windows.Controls.CheckBox]
foreach ($WingetPackage in $WingetPackages) {
    $NewStackPanel = New-Object System.Windows.Controls.StackPanel
    $NewStackPanel.Orientation = "Horizontal"
    $NewInfoButton = New-Object  System.Windows.Controls.Button
    $NewInfoButton.Style = $MainWindow.TryFindResource("AppsInit.InfoButtonStyle")
    $NewInfoButton.ToolTip = "Click for &quot; $($WingetPackage.Name)&quot; package information"
    $NewInfoButton.Add_Click({
            $Command = {
                Param($WingetPackageId)
                winget show $WingetPackageId
                Write-Host "`n`nClose this window manually or press _Enter_ to close window"
                Read-Host
            }
            Start-Process PowerShell -ArgumentList "-NoLogo -NoProfile", "-Command & { $Command }", "-WingetPackageId ""$($WingetPackage.Name)"""
        }.GetNewClosure())
    $NewCheckBox = New-Object  System.Windows.Controls.CheckBox
    $NewCheckBox.Cursor = "Hand"
    $NewCheckBox.Margin = "5, 0"
    $NewCheckBox.Content = "$($WingetPackage.Name)"
    $WingetPackagesCheckBoxes.Add($NewCheckBox)
    $NewStackPanel.AddChild($NewInfoButton)
    $NewStackPanel.AddChild($NewCheckBox)
    $AppsInitStackPanelWinget.AddChild($NewStackPanel)
}
$WingetPackagesCheckBoxes = $WingetPackagesCheckBoxes.ToArray()


$Script:AppxCheckBoxesState = $true
$AppsInitCheckAppxApps.Add_Click({
        foreach ($CheckBox in $AppxPackagesCheckBoxes) {
            $CheckBox.IsChecked = $AppxCheckBoxesState
        }
        $Script:AppxCheckBoxesState = -not $AppxCheckBoxesState
    })
    
$AppsInitSaveAppxPackagestoFile.Add_Click({
        $AppxPackagesRemoveFile = New-Object System.Collections.Generic.List[System.Object]
        for ($i = 0; $i -lt $AppxPackagesCheckBoxes.Count; $i++) {
            if ($AppxPackagesCheckBoxes[$i].IsChecked -eq $true) {
                $AppxPackagesRemoveFile.Add($AppxPackages[$i].Name)
            }
        }
        $AppxPackagesBase | ForEach-Object { $AppxPackagesRemoveFile.Add($_) }
        $AppxJson = @($AppxPackagesRemoveFile.ToArray() | Sort-Object -Unique) # No piping generation null object for array with no elements -> No array?
        ConvertTo-Json $AppxJson | Set-Content -Path $PSScriptRoot\appx_packages_base.json
    })
    
$Script:AppxProvisionedCheckBoxesState = $true
$AppsInitCheckAppxProvisionedApps.Add_Click({
        foreach ($CheckBox in $AppxProvisionedPackagesCheckBoxes) {
            $CheckBox.IsChecked = $AppxProvisionedCheckBoxesState
        }
        $Script:AppxProvisionedCheckBoxesState = -not $AppxProvisionedCheckBoxesState
    })
    
$AppsInitSaveAppxProvisionedPackagestoFile.Add_Click({
        $AppxProvisionedPackagesRemoveFile = New-Object System.Collections.Generic.List[System.Object]
        for ($i = 0; $i -lt $AppxProvisionedPackagesCheckBoxes.Count; $i++) {
            if ($AppxProvisionedPackagesCheckBoxes[$i].IsChecked -eq $true) {
                $AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[$i].DisplayName)
            }
        }
        $AppxProvisionedPackagesBase | ForEach-Object { $AppxProvisionedPackagesRemoveFile.Add($_) }
        $AppxProvisionedJson = @($AppxProvisionedPackagesRemoveFile.ToArray() | Sort-Object -Unique)
        ConvertTo-Json $AppxProvisionedJson | Set-Content -Path $PSScriptRoot\appx_provisioned_packages_base.json
    })
    
$AppsInitKVM.Add_Click({
        for ($i = 0; $i -lt $WingetPackages.Count; $i++) {
            if (($WingetPackages[$i].Value -eq 0) -or ($WingetPackages[$i].Value -eq 2)) {
                $WingetPackagesCheckBoxes[$i].IsChecked = $true
            }
        }
    })
    
$AppsInitCoding.Add_Click({
        for ($i = 0; $i -lt $WingetPackages.Count; $i++) {
            if (($WingetPackages[$i].Value -eq 1) -or ($WingetPackages[$i].Value -eq 2)) {
                $WingetPackagesCheckBoxes[$i].IsChecked = $true
            }
        }
    })

$AppsInitWingetClear.Add_Click({
        foreach ($CheckBox in $WingetPackagesCheckBoxes) {
            $CheckBox.IsChecked = $false
        }
    })

$AppsInitExecute.Add_Click({
        $AppxPackagesRemove = New-Object System.Collections.Generic.List[System.Object]
        $AppxProvisionedPackagesRemove = New-Object System.Collections.Generic.List[System.Object]
        $WingetPackagesInstall = New-Object System.Collections.Generic.List[System.Object]
        
        for ($i = 0; $i -lt $AppxPackagesCheckBoxes.Count; $i++) {
            if ($AppxPackagesCheckBoxes[$i].IsChecked -eq $true) {
                $AppxPackagesRemove.Add($AppxPackages[$i])
                $AppxPackagesStackPanelVisibility[$i].Visibility = "Collapsed"
                $AppxPackagesCheckBoxes[$i].IsChecked = $false
            }
        }
        
        for ($i = 0; $i -lt $AppxProvisionedPackagesCheckBoxes.Count; $i++) {
            if ($AppxProvisionedPackagesCheckBoxes[$i].IsChecked -eq $true) {
                $AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[$i])
                $AppxProvisionedPackagesStackPanelVisibility[$i].Visibility = "Collapsed"
                $AppxProvisionedPackagesCheckBoxes[$i].IsChecked = $false
            }
        }

        for ($i = 0; $i -lt $WingetPackagesCheckBoxes.Count; $i++) {
            if ($WingetPackagesCheckBoxes[$i].IsChecked -eq $true) {
                $WingetPackagesInstall.Add($WingetPackages[$i].Name)
                $WingetPackagesCheckBoxes[$i].IsChecked = $false
            }
        }
        
        foreach ( $package in $AppxPackagesRemove ) {
            Write-Host "Trying to remove $($package.PackageFullName)"
            Set-NonRemovableAppsPolicy -Online -PackageFamilyName $package.PackageFamilyName -NonRemovable 0 | Out-Host
            try { $package | Remove-AppxPackage -AllUsers | Out-Host -ErrorAction Stop }
            catch { Get-AppxPackage -PackageTypeFilter Main, Bundle, Resource -AllUsers | Where-Object { $_.Name -eq $package.Name }  | Remove-AppxPackage -Allusers | Out-Host }
            finally { 
                try { $package | Remove-AppxPackage | Out-Host -ErrorAction Stop }
                catch { Write-Host "$($package.PackageFullName) was not installed on this user account." -ForegroundColor Yellow }
                finally { Write-Host "Done with $($package.PackageFullName)." }
            }
        }
        Write-Host "Done with removing Appx Packages" -ForegroundColor Yellow
        foreach ( $package in $AppxProvisionedPackagesRemove ) {
            try { $package | Remove-AppxProvisionedPackage -AllUsers -Online | Out-Host -ErrorAction Stop }
            catch { Write-Host "$($package.PackageName) was not found on system." -ForegroundColor Yellow }
        }
        Write-Host "Done with removing Appx Provisioned Packages" -ForegroundColor Yellow
        foreach ( $package in $WingetPackagesInstall ) {
            winget install --id $package -e -i --accept-source-agreements --accept-package-agreements | Out-Host
        }
        Write-Host "Done with install Winget Packages" -ForegroundColor Yellow
    })

    
$MainWindow.ShowDialog() | Out-Null
    
#region winget uninstall
$random_number = (Get-Date -DisplayHint Time).Ticks
$filename = "$env:Temp\winget_uninstall_apps_temp_$random_number.json"
Get-Content $PSScriptRoot\winget_uninstall_apps.json | Set-Content "$filename"
try {
    Start-Process notepad -ArgumentList "$filename" -Wait -ErrorAction Stop
}
catch {
    Write-Host "NotePad was not found. Try removing remaining packages manually with winget" -ForegroundColor Yellow
}
$WingetRemovePackages = ((Get-Content "$filename" -raw) -replace '(?m)(?<=^([^"]| "[^"]*")*)//.*' -replace '(?ms)/\*.*?\*/') | ConvertFrom-Json
if ($WingetRemovePackages.Count -le 0) {
    Write-Host "No Packages were found in $filename" -ForegroundColor Yellow
}
else {
    Write-Host "$($WingetRemovePackages.Count) packages were found $filename."
    $WingetRemovePackages | Out-Host
}
foreach ($package in $WingetRemovePackages) {
    winget uninstall --id "$package"
}
#endregion

#region Startup Apps
Start-Process ms-settings:startupapps
[System.Windows.MessageBox]::Show("Disable: Start up apps") | Out-Null
#endregion