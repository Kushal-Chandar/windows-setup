. .\variables.ps1
$AppxPackagesXaml = ""
$VarAppx = New-Object System.Collections.Generic.List[System.Object]
$VarAppxInfo = New-Object System.Collections.Generic.List[System.Object]
for ($i = 0; $i -lt $AppxPackages.Count; $i++) {
    $XamlContent = ($AppxPackages[$i].Name + "-v" + $AppxPackages[$i].Version + "-" + ($AppxPackages[$i].Architecture.ToString().ToLower()))
    $Var = "A$i"
    $VarInfo = "AInfo$i"
    $AppxPackagesXaml += "<StackPanel Orientation=`"Horizontal`">`n<Button x:Name=`"$VarInfo`" Style=`"{StaticResource AppsInit.InfoButtonStyle}`" ToolTip=`"Click for &quot;$XamlContent&quot; package information`"/>`n<CheckBox x:Name=`"$Var`" Content=`"$XamlContent`" Margin=`"5, 0`"/>`n</StackPanel>`n"
    $VarAppx.Add("AppsInit" + $Var)
    $VarAppxInfo.Add("AppsInit" + $VarInfo)
    
}
$AppxProvisionedPackagesXaml = ""
$VarAppxProvisioned = New-Object System.Collections.Generic.List[System.Object]
$VarAppxProvisionedInfo = New-Object System.Collections.Generic.List[System.Object]
for ($i = 0; $i -lt $AppxProvisionedPackages.Count; $i++) {
    $XamlContent = ($AppxProvisionedPackages[$i].DisplayName)
    $Var = "P$i"
    $VarInfo = "PInfo$i"
    $AppxProvisionedPackagesXaml += "<StackPanel Orientation=`"Horizontal`">`n<Button x:Name=`"$VarInfo`" Style=`"{StaticResource AppsInit.InfoButtonStyle}`" ToolTip=`"Click for &quot;$XamlContent&quot; package information`"/>`n<CheckBox x:Name=`"$Var`" Content=`"$XamlContent`" Margin=`"5, 0`"/>`n</StackPanel>`n"
    $VarAppxProvisioned.Add("AppsInit" + $Var)
    $VarAppxProvisionedInfo.Add("AppsInit" + $VarInfo)
}
$WingetPackagesXaml = ""
$VarWinget = New-Object System.Collections.Generic.List[System.Object]
$VarWingetInfo = New-Object System.Collections.Generic.List[System.Object]
for ($i = 0; $i -lt $WingetPackages.Count; $i++) {
    $XamlContent = $WingetPackages[$i]
    $XamlContent
    $Var = "W$i"
    $VarInfo = "WInfo$i"
    $WingetPackagesXaml += "<StackPanel Orientation=`"Horizontal`">`n<Button x:Name=`"$VarInfo`" Style=`"{StaticResource AppsInit.InfoButtonStyle}`" ToolTip=`"Click for &quot;$XamlContent&quot; package information`"/>`n<CheckBox x:Name=`"$Var`" Content=`"$XamlContent`" Margin=`"5, 0`"/>`n</StackPanel>`n"
    $VarWinget.Add("AppsInit" + $Var)
    $VarWingetInfo.Add("AppsInit" + $VarInfo)
}

$AllAppxPackagesCheckboxes = ""
foreach ($Button in $VarAppx) {
    $PowerShellButtons = "`$$Button.IsChecked = `$state1`n"
    $AllAppxPackagesCheckboxes += $PowerShellButtons
}

$AllAppxProvisionedPackagesCheckboxes = ""
foreach ($Button in $VarAppxProvisioned) {
    $PowerShellButtons = "`$$Button.IsChecked = `$state2`n"
    $AllAppxProvisionedPackagesCheckboxes += $PowerShellButtons
}

$AppxPackagesCheckboxesSaveToFile = ""
foreach ($Button in $VarAppx) {
    $Index = ($Button -replace 'AppsInitA') -as [int]
    $PowerShellButtons = "If ( `$$Button.IsChecked -eq `$true ) {`n`$AppxPackagesRemoveFile.Add(`$AppxPackages`[$Index`].Name)`n}"
    $AppxPackagesCheckboxesSaveToFile += $PowerShellButtons
}

$AppxProvisionedPackagesCheckboxesSaveToFile = ""
foreach ($Button in $VarAppxProvisioned) {
    $Index = ($Button -replace 'AppsInitP') -as [int]
    $PowerShellButtons = "If ( `$$Button.IsChecked -eq `$true ) {`n`$AppxProvisionedPackagesRemoveFile.Add(`$AppxProvisionedPackages`[$Index`].PackageName)`n}"
    $AppxProvisionedPackagesCheckboxesSaveToFile += $PowerShellButtons
}

$InfoButtons = ""
foreach ($Button in $VarAppxInfo) {
    $Index = ($Button -replace 'AppsInitAInfo') -as [int]
    $PowerShellButtons = "`$$Button.Add_Click({`n`$Command = {`n. `"$PSScriptRoot\variables.ps1`"`n`$AppxPackages`[$Index`]`nWrite-Host `"``n``n``nPress _Enter_ key to exit.`"`nRead-Host`n}`nStart-Process powershell -Verb RunAs -ArgumentList `"-Command & {`$Command}`"`n})`n"
    $InfoButtons += $PowerShellButtons
}
foreach ($Button in $VarAppxProvisionedInfo) {
    $Index = ($Button -replace 'AppsInitPInfo') -as [int]
    $PowerShellButtons = "`$$Button.Add_Click({`n`$Command = {`n. `"$PSScriptRoot\variables.ps1`"`n`$AppxProvisionedPackages`[$Index`]`nWrite-Host `"``n``n``n``nPress _Enter_ key to exit.`"`nRead-Host`n}`nStart-Process powershell -Verb RunAs -ArgumentList `"-Command & {`$Command}`"`n})`n"
    $InfoButtons += $PowerShellButtons
}
foreach ($Button in $VarWingetInfo) {
    $Index = ($Button -replace 'AppsInitWInfo') -as [int]
    $PowerShellButtons = "`$$Button.Add_Click({`n`$Command = {`n. `"$PSScriptRoot\variables.ps1`"`nwinget show `$WingetPackages`[$Index`]`nWrite-Host `"``n``n``nPress _Enter_ key to exit.`"`nRead-Host`n}`nStart-Process powershell -Verb RunAs -ArgumentList `"-Command & {`$Command}`"`n})`n"
    $InfoButtons += $PowerShellButtons
}
            
$CheckBoxes = ""
foreach ($Button in $VarAppx) {
    $Index = ($Button -replace 'AppsInitA') -as [int]
    $PowerShellButtons = "If ( `$$Button.IsChecked -eq `$true ) {`n`$AppxPackagesRemove.Add(`$AppxPackages`[$Index`])`n`$$Button.IsChecked = `$false`n}"
    $CheckBoxes += $PowerShellButtons
}
foreach ($Button in $VarAppxProvisioned) {
    $Index = ($Button -replace 'AppsInitP') -as [int]
    $PowerShellButtons = "If ( `$$Button.IsChecked -eq `$true ) {`n`$AppxProvisionedPackagesRemove.Add(`$AppxProvisionedPackages`[$Index`])`n`$$Button.IsChecked = `$false`n}"
    $CheckBoxes += $PowerShellButtons
}
foreach ($Button in $VarWinget) {
    $Index = ($Button -replace 'AppsInitW') -as [int]
    $PowerShellButtons = "If ( `$$Button.IsChecked -eq `$true ) {`n`$WingetPackagesInstall.Add(`$WingetPackages`[$Index`])`n`$$Button.IsChecked = `$false`n}"
    $CheckBoxes += $PowerShellButtons
}

(Get-Content "add_or_remove_apps.ps1" -Raw) -replace '# Read from file checkboxes', $AppxReadCheck -replace '# All appx apps check boxes', $AllAppxPackagesCheckboxes -replace '# All appx provisioned apps check boxes', $AllAppxProvisionedPackagesCheckboxes -replace '# Save checked appx package to file', $AppxPackagesCheckboxesSaveToFile -replace '# Save checked appx provisioned package to file', $AppxProvisionedPackagesCheckboxesSaveToFile -replace '# InfoButtons', $InfoButtons -replace '# CheckBoxes', $CheckBoxes | Set-Content -Path "add_or_remove_apps_temp.ps1"
((Get-Content -Path "$PSScriptRoot\MainWindow.xaml" -Raw) -replace '<!-- Remove Appx Packages -->', $AppxPackagesXaml -replace '<!-- Remove Appx Provisioned Packages -->', $AppxProvisionedPackagesXaml -replace '<!-- Install Winget Packages -->', $WingetPackagesXaml) | Set-Content -Path "$PSScriptRoot\MainWindow_temp.xaml"