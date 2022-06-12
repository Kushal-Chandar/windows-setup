Add-Type -AssemblyName PresentationFramework
. .\variables.ps1
$inputXML = Get-Content "MainWindow.xaml"
$inputXML = $inputXML -replace 'mc:Ignorable="d"', '' -replace "x:N", 'N' -replace '^<Win.*', '<Window'
[xml]$XAML = $inputXML
$XAMLReader = New-Object System.Xml.XmlNodeReader $XAML
$MainWindow = [Windows.Markup.XamlReader]::Load($XAMLReader)

$Script:CounterAppx = 0
$Script:CounterAppxProvisioned = 0

# function AppxButtonUI {
#     begin { <statement list> }
#     process { <statement list> }
#     end {
#         $NewStackPanel = New-Object System.Windows.Controls.StackPanel
#         $NewStackPanel.Orientation = "Horizonatal"
#         $NewInfoButton = New-Object  System.Windows.Controls.Button
#         $NewInfoButton.Name = "AppsInitAInfo$CounterAppx"
#         $NewInfoButton.Style = $MainWindow.TryFindResource("AppsInit.InfoButtonStyle")
#         $NewInfoButton.ToolTip = "Click for &quot;$AppxPackages`[$CounterAppx`]&quot; package information"
#         $NewCheckBox = New-Object  System.Windows.Controls.CheckBox
#         $NewCheckBox.Name = "AppsInitA$CounterAppx"
#         $NewCheckBox.Margin = "5, 0"
#         $NewCheckBox.Content = "$AppxPackages`[$CounterAppx`]"
#         $AppxPackagesXaml += "<StackPanel Orientation=`"Horizontal`">`n<Button  Style=`"{StaticResource }`" ToolTip=`/>`n<CheckBox x:Name=`"$Var`" Content=`"$XamlContent`" Margin=`"5, 0`"/>`n</StackPanel>`n"
#         $NewStackPanel.AddChild($NewInfoButton)
#         $NewStackPanel.AddChild($NewCheckBox)
#         $AppsInitStackPanelAppx.AddChild($NewStackPanel)
#     }
# }
$XAML.SelectNodes("//*[@Name]") | ForEach-Object { Set-Variable -Name "AppsInit$($_.Name)" -Value $MainWindow.FindName($_.Name) }
Get-Variable Apps*

$AppxPackagesCheckBoxes = New-Object System.Collections.Generic.List[System.Windows.Controls.CheckBox]
foreach ($AppxPackage in $AppxPackages) {
    $AppxPackageDisplay = ($AppxPackage.Name + "-v" + $AppxPackage.Version + "-" + ($AppxPackage.Architecture.ToString().ToLower()))
    $NewStackPanel = New-Object System.Windows.Controls.StackPanel
    $NewStackPanel.Orientation = "Horizontal"
    $NewInfoButton = New-Object  System.Windows.Controls.Button
    $NewInfoButton.Style = $MainWindow.TryFindResource("AppsInit.InfoButtonStyle")
    $NewInfoButton.ToolTip = "Click for &quot;$AppxPackageDisplay&quot; package information"
    $NewInfoButton.Add_Click({
            $AppxPackage | Out-File "$env:TEMP\app_info.txt"
            $Command = {
                Get-Content "$env:TEMP\app_info.txt"
                Remove-Item "$env:TEMP\app_info.txt" -Force
                Write-Host "Press _Enter_ to exit."
                Read-Host
            }
            Start-Process powershell -ArgumentList "-NoExit", "-Command &{ $Command }"
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





$global:state1 = $true
$AppsInitCheckAppxApps.Add_Click({
        # All appx apps check boxes
        $global:state1 = -not $state1
    })

$AppsInitSaveAppxPackagestoFile.Add_Click({
        $AppxPackagesRemoveFile = New-Object System.Collections.Generic.List[System.Object]
    
        # Save checked appx package to file
    
        $AppxPackagesRemoveFile.ToArray() | Sort-Object -Unique | ConvertTo-Json | Set-Content -Path appx_packages_base.json
    })
    
$global:state2 = $true
$AppsInitCheckAppxProvisionedApps.Add_Click({
        # All appx provisioned apps check boxes
        $global:state2 = -not $state2
    })
    
$AppsInitSaveAppxProvisionedPackagestoFile.Add_Click({
        $AppxProvisionedPackagesRemoveFile = New-Object System.Collections.Generic.List[System.Object]
        
        # Save checked appx provisioned package to file
    
        $AppxProvisionedPackagesRemoveFile.ToArray() | Sort-Object -Unique | ConvertTo-Json | Set-Content -Path appx_provisioned_packages_base.json
    })

$AppsInitKVM.Add_Click({
        # KVM setup check boxes
    })

$AppsInitCoding.Add_Click({
        # Coding setup checkboxes
    })

# InfoButtons 

$AppsInitExecute.Add_Click({
        $AppxPackagesRemove = New-Object System.Collections.Generic.List[System.Object]
        $AppxProvisionedPackagesRemove = New-Object System.Collections.Generic.List[System.Object]
        $WingetPackagesInstall = New-Object System.Collections.Generic.List[System.Object]

        # CheckBoxes

        $WingetPackagesInstall
        foreach ( $package in $AppxPackagesRemove ) {
            Set-NonRemovableAppsPolicy -Online -PackageFamilyName $package.PackageFamilyName -NonRemovable 0 | Out-Null
            Remove-AppxPackage -Package $package -AllUsers | Out-Host
        }
        foreach ( $package in $AppxProvisionedPackagesRemove ) {
            Remove-AppxProvisionedPackage -PackageName $package.PackageName -AllUsers -Online | Out-Host
        }
        foreach ( $package in $WingetPackagesInstall ) {
            winget install --id $package -e -i --accept-source-agreements --accept-package-agreements | Out-Host
        }
    })


$MainWindow.ShowDialog() | Out-Null

# #region winget uninstall
# Get-Content "winget_uninstall_apps.json" | Set-Content "winget_uninstall_apps_temp.json"
# try {
#     Start-Process notepad -ArgumentList "winget_uninstall_apps_temp.json" -Wait
# }
# catch {
#     Write-Host "NotePad was not found.`nOpen`"$PSScriptRoot\winget_uninstall_apps_temp.json`" and add winget package ids to uninstall.`nIf you want an item to say on the list after the script, edit open `"$PSScriptRoot\winget_uninstall_apps.json`" and add package id" -ForegroundColor Yellow
# }

# $WingetRemovePackages = ((Get-Content winget_uninstall_apps_temp.json -raw) -replace '(?m)(?<=^([^"]| "[^"]*")*)//.*' -replace '(?ms)/\*.*?\*/') | ConvertFrom-Json
# if ($WingetRemovePackages.Count -le 0) {
#     Write-Host "No Packages were found." -ForegroundColor Yellow
# }
# else {
#     Write-Host "Packages Found."
# }
# foreach ($package in $WingetRemovePackages) {
#     winget uninstall --id "$package"
# }
# #endregion

#region Startup Apps
# Start-Process ms-settings:startupapps
# [System.Windows.MessageBox]::Show("Disable: Start up apps") | Out-Null
#endregion