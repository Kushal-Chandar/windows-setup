Add-Type -AssemblyName PresentationFramework
. .\variables.ps1
$inputXML = Get-Content "MainWindow.xaml"
$inputXML = $inputXML -replace 'mc:Ignorable="d"', '' -replace "x:N", 'N' -replace '^<Win.*', '<Window'
[xml]$XAML = $inputXML
$XAMLReader = New-Object System.Xml.XmlNodeReader $XAML
$MainWindow = [Windows.Markup.XamlReader]::Load($XAMLReader)


$XAML.SelectNodes("//*[@Name]") | ForEach-Object { Set-Variable -Name "AppsInit$($_.Name)" -Value $MainWindow.FindName($_.Name) }
Get-Variable Apps*

$AppsInitA0.IsChecked = $true
$AppsInitA1.IsChecked = $true
$AppsInitA2.IsChecked = $true
$AppsInitA3.IsChecked = $true
$AppsInitA4.IsChecked = $true
$AppsInitA5.IsChecked = $true
$AppsInitA6.IsChecked = $true
$AppsInitA7.IsChecked = $true
$AppsInitA9.IsChecked = $true
$AppsInitA10.IsChecked = $true
$AppsInitA11.IsChecked = $true
$AppsInitA12.IsChecked = $true
$AppsInitA13.IsChecked = $true
$AppsInitA15.IsChecked = $true
$AppsInitA16.IsChecked = $true
$AppsInitA17.IsChecked = $true
$AppsInitA20.IsChecked = $true
$AppsInitA21.IsChecked = $true
$AppsInitA22.IsChecked = $true
$AppsInitA24.IsChecked = $true
$AppsInitA25.IsChecked = $true
$AppsInitA26.IsChecked = $true
$AppsInitA27.IsChecked = $true
$AppsInitA28.IsChecked = $true
$AppsInitA29.IsChecked = $true
$AppsInitA30.IsChecked = $true
$AppsInitA33.IsChecked = $true
$AppsInitA34.IsChecked = $true
$AppsInitA35.IsChecked = $true
$AppsInitA36.IsChecked = $true
$AppsInitA37.IsChecked = $true
$AppsInitA38.IsChecked = $true
$AppsInitA39.IsChecked = $true
$AppsInitA40.IsChecked = $true
$AppsInitA44.IsChecked = $true
$AppsInitA50.IsChecked = $true
$AppsInitA53.IsChecked = $true
$AppsInitA56.IsChecked = $true
$AppsInitA57.IsChecked = $true
$AppsInitA58.IsChecked = $true
$AppsInitA63.IsChecked = $true
$AppsInitA64.IsChecked = $true
$AppsInitA65.IsChecked = $true
$AppsInitA66.IsChecked = $true
$AppsInitA67.IsChecked = $true
$AppsInitA68.IsChecked = $true
$AppsInitA69.IsChecked = $true
$AppsInitA70.IsChecked = $true
$AppsInitA71.IsChecked = $true
$AppsInitA72.IsChecked = $true
$AppsInitA73.IsChecked = $true
$AppsInitA74.IsChecked = $true
$AppsInitA75.IsChecked = $true
$AppsInitA76.IsChecked = $true
$AppsInitA79.IsChecked = $true
$AppsInitA80.IsChecked = $true


$global:state1 = $true
$AppsInitCheckAppxApps.Add_Click({
        $AppsInitA0.IsChecked = $state1
$AppsInitA1.IsChecked = $state1
$AppsInitA2.IsChecked = $state1
$AppsInitA3.IsChecked = $state1
$AppsInitA4.IsChecked = $state1
$AppsInitA5.IsChecked = $state1
$AppsInitA6.IsChecked = $state1
$AppsInitA7.IsChecked = $state1
$AppsInitA8.IsChecked = $state1
$AppsInitA9.IsChecked = $state1
$AppsInitA10.IsChecked = $state1
$AppsInitA11.IsChecked = $state1
$AppsInitA12.IsChecked = $state1
$AppsInitA13.IsChecked = $state1
$AppsInitA14.IsChecked = $state1
$AppsInitA15.IsChecked = $state1
$AppsInitA16.IsChecked = $state1
$AppsInitA17.IsChecked = $state1
$AppsInitA18.IsChecked = $state1
$AppsInitA19.IsChecked = $state1
$AppsInitA20.IsChecked = $state1
$AppsInitA21.IsChecked = $state1
$AppsInitA22.IsChecked = $state1
$AppsInitA23.IsChecked = $state1
$AppsInitA24.IsChecked = $state1
$AppsInitA25.IsChecked = $state1
$AppsInitA26.IsChecked = $state1
$AppsInitA27.IsChecked = $state1
$AppsInitA28.IsChecked = $state1
$AppsInitA29.IsChecked = $state1
$AppsInitA30.IsChecked = $state1
$AppsInitA31.IsChecked = $state1
$AppsInitA32.IsChecked = $state1
$AppsInitA33.IsChecked = $state1
$AppsInitA34.IsChecked = $state1
$AppsInitA35.IsChecked = $state1
$AppsInitA36.IsChecked = $state1
$AppsInitA37.IsChecked = $state1
$AppsInitA38.IsChecked = $state1
$AppsInitA39.IsChecked = $state1
$AppsInitA40.IsChecked = $state1
$AppsInitA41.IsChecked = $state1
$AppsInitA42.IsChecked = $state1
$AppsInitA43.IsChecked = $state1
$AppsInitA44.IsChecked = $state1
$AppsInitA45.IsChecked = $state1
$AppsInitA46.IsChecked = $state1
$AppsInitA47.IsChecked = $state1
$AppsInitA48.IsChecked = $state1
$AppsInitA49.IsChecked = $state1
$AppsInitA50.IsChecked = $state1
$AppsInitA51.IsChecked = $state1
$AppsInitA52.IsChecked = $state1
$AppsInitA53.IsChecked = $state1
$AppsInitA54.IsChecked = $state1
$AppsInitA55.IsChecked = $state1
$AppsInitA56.IsChecked = $state1
$AppsInitA57.IsChecked = $state1
$AppsInitA58.IsChecked = $state1
$AppsInitA59.IsChecked = $state1
$AppsInitA60.IsChecked = $state1
$AppsInitA61.IsChecked = $state1
$AppsInitA62.IsChecked = $state1
$AppsInitA63.IsChecked = $state1
$AppsInitA64.IsChecked = $state1
$AppsInitA65.IsChecked = $state1
$AppsInitA66.IsChecked = $state1
$AppsInitA67.IsChecked = $state1
$AppsInitA68.IsChecked = $state1
$AppsInitA69.IsChecked = $state1
$AppsInitA70.IsChecked = $state1
$AppsInitA71.IsChecked = $state1
$AppsInitA72.IsChecked = $state1
$AppsInitA73.IsChecked = $state1
$AppsInitA74.IsChecked = $state1
$AppsInitA75.IsChecked = $state1
$AppsInitA76.IsChecked = $state1
$AppsInitA77.IsChecked = $state1
$AppsInitA78.IsChecked = $state1
$AppsInitA79.IsChecked = $state1
$AppsInitA80.IsChecked = $state1

        $global:state1 = -not $state1
    })

$AppsInitSaveAppxPackagestoFile.Add_Click({
        $AppxPackagesRemoveFile = New-Object System.Collections.Generic.List[System.Object]
    
        If ( $AppsInitA0.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[0].Name)
}If ( $AppsInitA1.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[1].Name)
}If ( $AppsInitA2.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[2].Name)
}If ( $AppsInitA3.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[3].Name)
}If ( $AppsInitA4.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[4].Name)
}If ( $AppsInitA5.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[5].Name)
}If ( $AppsInitA6.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[6].Name)
}If ( $AppsInitA7.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[7].Name)
}If ( $AppsInitA8.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[8].Name)
}If ( $AppsInitA9.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[9].Name)
}If ( $AppsInitA10.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[10].Name)
}If ( $AppsInitA11.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[11].Name)
}If ( $AppsInitA12.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[12].Name)
}If ( $AppsInitA13.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[13].Name)
}If ( $AppsInitA14.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[14].Name)
}If ( $AppsInitA15.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[15].Name)
}If ( $AppsInitA16.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[16].Name)
}If ( $AppsInitA17.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[17].Name)
}If ( $AppsInitA18.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[18].Name)
}If ( $AppsInitA19.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[19].Name)
}If ( $AppsInitA20.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[20].Name)
}If ( $AppsInitA21.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[21].Name)
}If ( $AppsInitA22.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[22].Name)
}If ( $AppsInitA23.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[23].Name)
}If ( $AppsInitA24.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[24].Name)
}If ( $AppsInitA25.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[25].Name)
}If ( $AppsInitA26.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[26].Name)
}If ( $AppsInitA27.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[27].Name)
}If ( $AppsInitA28.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[28].Name)
}If ( $AppsInitA29.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[29].Name)
}If ( $AppsInitA30.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[30].Name)
}If ( $AppsInitA31.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[31].Name)
}If ( $AppsInitA32.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[32].Name)
}If ( $AppsInitA33.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[33].Name)
}If ( $AppsInitA34.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[34].Name)
}If ( $AppsInitA35.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[35].Name)
}If ( $AppsInitA36.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[36].Name)
}If ( $AppsInitA37.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[37].Name)
}If ( $AppsInitA38.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[38].Name)
}If ( $AppsInitA39.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[39].Name)
}If ( $AppsInitA40.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[40].Name)
}If ( $AppsInitA41.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[41].Name)
}If ( $AppsInitA42.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[42].Name)
}If ( $AppsInitA43.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[43].Name)
}If ( $AppsInitA44.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[44].Name)
}If ( $AppsInitA45.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[45].Name)
}If ( $AppsInitA46.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[46].Name)
}If ( $AppsInitA47.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[47].Name)
}If ( $AppsInitA48.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[48].Name)
}If ( $AppsInitA49.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[49].Name)
}If ( $AppsInitA50.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[50].Name)
}If ( $AppsInitA51.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[51].Name)
}If ( $AppsInitA52.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[52].Name)
}If ( $AppsInitA53.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[53].Name)
}If ( $AppsInitA54.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[54].Name)
}If ( $AppsInitA55.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[55].Name)
}If ( $AppsInitA56.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[56].Name)
}If ( $AppsInitA57.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[57].Name)
}If ( $AppsInitA58.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[58].Name)
}If ( $AppsInitA59.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[59].Name)
}If ( $AppsInitA60.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[60].Name)
}If ( $AppsInitA61.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[61].Name)
}If ( $AppsInitA62.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[62].Name)
}If ( $AppsInitA63.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[63].Name)
}If ( $AppsInitA64.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[64].Name)
}If ( $AppsInitA65.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[65].Name)
}If ( $AppsInitA66.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[66].Name)
}If ( $AppsInitA67.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[67].Name)
}If ( $AppsInitA68.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[68].Name)
}If ( $AppsInitA69.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[69].Name)
}If ( $AppsInitA70.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[70].Name)
}If ( $AppsInitA71.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[71].Name)
}If ( $AppsInitA72.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[72].Name)
}If ( $AppsInitA73.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[73].Name)
}If ( $AppsInitA74.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[74].Name)
}If ( $AppsInitA75.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[75].Name)
}If ( $AppsInitA76.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[76].Name)
}If ( $AppsInitA77.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[77].Name)
}If ( $AppsInitA78.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[78].Name)
}If ( $AppsInitA79.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[79].Name)
}If ( $AppsInitA80.IsChecked -eq $true ) {
$AppxPackagesRemoveFile.Add($AppxPackages[80].Name)
}

        $AppxPackagesRemoveFile.ToArray() | Sort-Object -Unique | ConvertTo-Json | Set-Content -Path appx_packages_base.json
    })
    
$global:state2 = $true
$AppsInitCheckAppxProvisionedApps.Add_Click({
        $AppsInitP0.IsChecked = $state2
$AppsInitP1.IsChecked = $state2
$AppsInitP2.IsChecked = $state2
$AppsInitP3.IsChecked = $state2
$AppsInitP4.IsChecked = $state2
$AppsInitP5.IsChecked = $state2
$AppsInitP6.IsChecked = $state2
$AppsInitP7.IsChecked = $state2
$AppsInitP8.IsChecked = $state2
$AppsInitP9.IsChecked = $state2
$AppsInitP10.IsChecked = $state2
$AppsInitP11.IsChecked = $state2
$AppsInitP12.IsChecked = $state2
$AppsInitP13.IsChecked = $state2
$AppsInitP14.IsChecked = $state2
$AppsInitP15.IsChecked = $state2
$AppsInitP16.IsChecked = $state2
$AppsInitP17.IsChecked = $state2
$AppsInitP18.IsChecked = $state2
$AppsInitP19.IsChecked = $state2
$AppsInitP20.IsChecked = $state2
$AppsInitP21.IsChecked = $state2
$AppsInitP22.IsChecked = $state2
$AppsInitP23.IsChecked = $state2
$AppsInitP24.IsChecked = $state2
$AppsInitP25.IsChecked = $state2
$AppsInitP26.IsChecked = $state2
$AppsInitP27.IsChecked = $state2
$AppsInitP28.IsChecked = $state2
$AppsInitP29.IsChecked = $state2
$AppsInitP30.IsChecked = $state2
$AppsInitP31.IsChecked = $state2
$AppsInitP32.IsChecked = $state2
$AppsInitP33.IsChecked = $state2
$AppsInitP34.IsChecked = $state2
$AppsInitP35.IsChecked = $state2
$AppsInitP36.IsChecked = $state2
$AppsInitP37.IsChecked = $state2
$AppsInitP38.IsChecked = $state2
$AppsInitP39.IsChecked = $state2
$AppsInitP40.IsChecked = $state2
$AppsInitP41.IsChecked = $state2
$AppsInitP42.IsChecked = $state2
$AppsInitP43.IsChecked = $state2
$AppsInitP44.IsChecked = $state2
$AppsInitP45.IsChecked = $state2
$AppsInitP46.IsChecked = $state2
$AppsInitP47.IsChecked = $state2
$AppsInitP48.IsChecked = $state2
$AppsInitP49.IsChecked = $state2
$AppsInitP50.IsChecked = $state2
$AppsInitP51.IsChecked = $state2
$AppsInitP52.IsChecked = $state2
$AppsInitP53.IsChecked = $state2

        $global:state2 = -not $state2
    })
    
$AppsInitSaveAppxProvisionedPackagestoFile.Add_Click({
        $AppxProvisionedPackagesRemoveFile = New-Object System.Collections.Generic.List[System.Object]
        
        If ( $AppsInitP0.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[0].PackageName)
}If ( $AppsInitP1.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[1].PackageName)
}If ( $AppsInitP2.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[2].PackageName)
}If ( $AppsInitP3.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[3].PackageName)
}If ( $AppsInitP4.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[4].PackageName)
}If ( $AppsInitP5.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[5].PackageName)
}If ( $AppsInitP6.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[6].PackageName)
}If ( $AppsInitP7.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[7].PackageName)
}If ( $AppsInitP8.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[8].PackageName)
}If ( $AppsInitP9.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[9].PackageName)
}If ( $AppsInitP10.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[10].PackageName)
}If ( $AppsInitP11.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[11].PackageName)
}If ( $AppsInitP12.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[12].PackageName)
}If ( $AppsInitP13.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[13].PackageName)
}If ( $AppsInitP14.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[14].PackageName)
}If ( $AppsInitP15.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[15].PackageName)
}If ( $AppsInitP16.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[16].PackageName)
}If ( $AppsInitP17.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[17].PackageName)
}If ( $AppsInitP18.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[18].PackageName)
}If ( $AppsInitP19.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[19].PackageName)
}If ( $AppsInitP20.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[20].PackageName)
}If ( $AppsInitP21.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[21].PackageName)
}If ( $AppsInitP22.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[22].PackageName)
}If ( $AppsInitP23.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[23].PackageName)
}If ( $AppsInitP24.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[24].PackageName)
}If ( $AppsInitP25.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[25].PackageName)
}If ( $AppsInitP26.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[26].PackageName)
}If ( $AppsInitP27.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[27].PackageName)
}If ( $AppsInitP28.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[28].PackageName)
}If ( $AppsInitP29.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[29].PackageName)
}If ( $AppsInitP30.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[30].PackageName)
}If ( $AppsInitP31.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[31].PackageName)
}If ( $AppsInitP32.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[32].PackageName)
}If ( $AppsInitP33.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[33].PackageName)
}If ( $AppsInitP34.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[34].PackageName)
}If ( $AppsInitP35.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[35].PackageName)
}If ( $AppsInitP36.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[36].PackageName)
}If ( $AppsInitP37.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[37].PackageName)
}If ( $AppsInitP38.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[38].PackageName)
}If ( $AppsInitP39.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[39].PackageName)
}If ( $AppsInitP40.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[40].PackageName)
}If ( $AppsInitP41.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[41].PackageName)
}If ( $AppsInitP42.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[42].PackageName)
}If ( $AppsInitP43.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[43].PackageName)
}If ( $AppsInitP44.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[44].PackageName)
}If ( $AppsInitP45.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[45].PackageName)
}If ( $AppsInitP46.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[46].PackageName)
}If ( $AppsInitP47.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[47].PackageName)
}If ( $AppsInitP48.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[48].PackageName)
}If ( $AppsInitP49.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[49].PackageName)
}If ( $AppsInitP50.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[50].PackageName)
}If ( $AppsInitP51.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[51].PackageName)
}If ( $AppsInitP52.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[52].PackageName)
}If ( $AppsInitP53.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemoveFile.Add($AppxProvisionedPackages[53].PackageName)
}
    
        $AppxProvisionedPackagesRemoveFile.ToArray() | Sort-Object -Unique | ConvertTo-Json | Set-Content -Path appx_provisioned_packages_base.json
    })

$AppsInitKVM.Add_Click({
        # KVM setup check boxes
    })

$AppsInitCoding.Add_Click({
        # Coding setup checkboxes
    })

$AppsInitAInfo0.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[0]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo1.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[1]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo2.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[2]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo3.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[3]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo4.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[4]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo5.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[5]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo6.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[6]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo7.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[7]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo8.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[8]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo9.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[9]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo10.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[10]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo11.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[11]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo12.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[12]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo13.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[13]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo14.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[14]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo15.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[15]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo16.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[16]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo17.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[17]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo18.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[18]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo19.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[19]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo20.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[20]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo21.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[21]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo22.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[22]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo23.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[23]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo24.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[24]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo25.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[25]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo26.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[26]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo27.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[27]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo28.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[28]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo29.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[29]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo30.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[30]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo31.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[31]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo32.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[32]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo33.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[33]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo34.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[34]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo35.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[35]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo36.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[36]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo37.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[37]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo38.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[38]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo39.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[39]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo40.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[40]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo41.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[41]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo42.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[42]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo43.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[43]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo44.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[44]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo45.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[45]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo46.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[46]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo47.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[47]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo48.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[48]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo49.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[49]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo50.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[50]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo51.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[51]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo52.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[52]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo53.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[53]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo54.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[54]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo55.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[55]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo56.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[56]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo57.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[57]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo58.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[58]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo59.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[59]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo60.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[60]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo61.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[61]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo62.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[62]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo63.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[63]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo64.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[64]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo65.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[65]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo66.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[66]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo67.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[67]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo68.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[68]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo69.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[69]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo70.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[70]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo71.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[71]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo72.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[72]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo73.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[73]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo74.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[74]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo75.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[75]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo76.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[76]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo77.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[77]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo78.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[78]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo79.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[79]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitAInfo80.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxPackages[80]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo0.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[0]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo1.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[1]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo2.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[2]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo3.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[3]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo4.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[4]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo5.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[5]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo6.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[6]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo7.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[7]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo8.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[8]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo9.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[9]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo10.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[10]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo11.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[11]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo12.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[12]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo13.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[13]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo14.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[14]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo15.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[15]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo16.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[16]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo17.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[17]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo18.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[18]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo19.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[19]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo20.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[20]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo21.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[21]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo22.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[22]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo23.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[23]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo24.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[24]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo25.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[25]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo26.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[26]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo27.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[27]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo28.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[28]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo29.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[29]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo30.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[30]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo31.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[31]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo32.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[32]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo33.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[33]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo34.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[34]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo35.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[35]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo36.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[36]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo37.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[37]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo38.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[38]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo39.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[39]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo40.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[40]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo41.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[41]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo42.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[42]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo43.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[43]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo44.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[44]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo45.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[45]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo46.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[46]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo47.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[47]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo48.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[48]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo49.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[49]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo50.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[50]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo51.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[51]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo52.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[52]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitPInfo53.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
$AppxProvisionedPackages[53]
Write-Host "`n`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo0.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[0]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo1.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[1]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo2.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[2]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo3.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[3]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo4.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[4]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo5.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[5]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo6.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[6]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo7.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[7]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo8.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[8]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo9.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[9]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo10.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[10]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo11.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[11]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo12.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[12]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo13.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[13]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo14.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[14]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo15.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[15]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo16.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[16]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo17.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[17]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo18.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[18]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo19.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[19]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo20.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[20]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo21.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[21]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo22.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[22]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo23.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[23]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo24.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[24]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo25.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[25]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo26.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[26]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo27.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[27]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo28.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[28]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo29.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[29]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo30.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[30]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo31.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[31]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo32.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[32]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo33.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[33]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo34.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[34]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo35.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[35]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo36.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[36]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo37.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[37]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo38.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[38]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo39.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[39]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
$AppsInitWInfo40.Add_Click({
$Command = {
. "C:\Users\kusha\Windows-Setup\applications\variables.ps1"
winget show $WingetPackages[40]
Write-Host "`n`n`nPress _Enter_ key to exit."
Read-Host
}
Start-Process powershell -Verb RunAs -ArgumentList "-Command & {$Command}"
})
 

$AppsInitExecute.Add_Click({
        $AppxPackagesRemove = New-Object System.Collections.Generic.List[System.Object]
        $AppxProvisionedPackagesRemove = New-Object System.Collections.Generic.List[System.Object]
        $WingetPackagesInstall = New-Object System.Collections.Generic.List[System.Object]

        If ( $AppsInitA0.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[0])
$AppsInitA0.IsChecked = $false
}If ( $AppsInitA1.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[1])
$AppsInitA1.IsChecked = $false
}If ( $AppsInitA2.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[2])
$AppsInitA2.IsChecked = $false
}If ( $AppsInitA3.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[3])
$AppsInitA3.IsChecked = $false
}If ( $AppsInitA4.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[4])
$AppsInitA4.IsChecked = $false
}If ( $AppsInitA5.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[5])
$AppsInitA5.IsChecked = $false
}If ( $AppsInitA6.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[6])
$AppsInitA6.IsChecked = $false
}If ( $AppsInitA7.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[7])
$AppsInitA7.IsChecked = $false
}If ( $AppsInitA8.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[8])
$AppsInitA8.IsChecked = $false
}If ( $AppsInitA9.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[9])
$AppsInitA9.IsChecked = $false
}If ( $AppsInitA10.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[10])
$AppsInitA10.IsChecked = $false
}If ( $AppsInitA11.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[11])
$AppsInitA11.IsChecked = $false
}If ( $AppsInitA12.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[12])
$AppsInitA12.IsChecked = $false
}If ( $AppsInitA13.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[13])
$AppsInitA13.IsChecked = $false
}If ( $AppsInitA14.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[14])
$AppsInitA14.IsChecked = $false
}If ( $AppsInitA15.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[15])
$AppsInitA15.IsChecked = $false
}If ( $AppsInitA16.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[16])
$AppsInitA16.IsChecked = $false
}If ( $AppsInitA17.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[17])
$AppsInitA17.IsChecked = $false
}If ( $AppsInitA18.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[18])
$AppsInitA18.IsChecked = $false
}If ( $AppsInitA19.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[19])
$AppsInitA19.IsChecked = $false
}If ( $AppsInitA20.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[20])
$AppsInitA20.IsChecked = $false
}If ( $AppsInitA21.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[21])
$AppsInitA21.IsChecked = $false
}If ( $AppsInitA22.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[22])
$AppsInitA22.IsChecked = $false
}If ( $AppsInitA23.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[23])
$AppsInitA23.IsChecked = $false
}If ( $AppsInitA24.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[24])
$AppsInitA24.IsChecked = $false
}If ( $AppsInitA25.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[25])
$AppsInitA25.IsChecked = $false
}If ( $AppsInitA26.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[26])
$AppsInitA26.IsChecked = $false
}If ( $AppsInitA27.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[27])
$AppsInitA27.IsChecked = $false
}If ( $AppsInitA28.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[28])
$AppsInitA28.IsChecked = $false
}If ( $AppsInitA29.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[29])
$AppsInitA29.IsChecked = $false
}If ( $AppsInitA30.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[30])
$AppsInitA30.IsChecked = $false
}If ( $AppsInitA31.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[31])
$AppsInitA31.IsChecked = $false
}If ( $AppsInitA32.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[32])
$AppsInitA32.IsChecked = $false
}If ( $AppsInitA33.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[33])
$AppsInitA33.IsChecked = $false
}If ( $AppsInitA34.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[34])
$AppsInitA34.IsChecked = $false
}If ( $AppsInitA35.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[35])
$AppsInitA35.IsChecked = $false
}If ( $AppsInitA36.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[36])
$AppsInitA36.IsChecked = $false
}If ( $AppsInitA37.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[37])
$AppsInitA37.IsChecked = $false
}If ( $AppsInitA38.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[38])
$AppsInitA38.IsChecked = $false
}If ( $AppsInitA39.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[39])
$AppsInitA39.IsChecked = $false
}If ( $AppsInitA40.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[40])
$AppsInitA40.IsChecked = $false
}If ( $AppsInitA41.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[41])
$AppsInitA41.IsChecked = $false
}If ( $AppsInitA42.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[42])
$AppsInitA42.IsChecked = $false
}If ( $AppsInitA43.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[43])
$AppsInitA43.IsChecked = $false
}If ( $AppsInitA44.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[44])
$AppsInitA44.IsChecked = $false
}If ( $AppsInitA45.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[45])
$AppsInitA45.IsChecked = $false
}If ( $AppsInitA46.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[46])
$AppsInitA46.IsChecked = $false
}If ( $AppsInitA47.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[47])
$AppsInitA47.IsChecked = $false
}If ( $AppsInitA48.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[48])
$AppsInitA48.IsChecked = $false
}If ( $AppsInitA49.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[49])
$AppsInitA49.IsChecked = $false
}If ( $AppsInitA50.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[50])
$AppsInitA50.IsChecked = $false
}If ( $AppsInitA51.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[51])
$AppsInitA51.IsChecked = $false
}If ( $AppsInitA52.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[52])
$AppsInitA52.IsChecked = $false
}If ( $AppsInitA53.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[53])
$AppsInitA53.IsChecked = $false
}If ( $AppsInitA54.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[54])
$AppsInitA54.IsChecked = $false
}If ( $AppsInitA55.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[55])
$AppsInitA55.IsChecked = $false
}If ( $AppsInitA56.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[56])
$AppsInitA56.IsChecked = $false
}If ( $AppsInitA57.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[57])
$AppsInitA57.IsChecked = $false
}If ( $AppsInitA58.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[58])
$AppsInitA58.IsChecked = $false
}If ( $AppsInitA59.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[59])
$AppsInitA59.IsChecked = $false
}If ( $AppsInitA60.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[60])
$AppsInitA60.IsChecked = $false
}If ( $AppsInitA61.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[61])
$AppsInitA61.IsChecked = $false
}If ( $AppsInitA62.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[62])
$AppsInitA62.IsChecked = $false
}If ( $AppsInitA63.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[63])
$AppsInitA63.IsChecked = $false
}If ( $AppsInitA64.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[64])
$AppsInitA64.IsChecked = $false
}If ( $AppsInitA65.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[65])
$AppsInitA65.IsChecked = $false
}If ( $AppsInitA66.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[66])
$AppsInitA66.IsChecked = $false
}If ( $AppsInitA67.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[67])
$AppsInitA67.IsChecked = $false
}If ( $AppsInitA68.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[68])
$AppsInitA68.IsChecked = $false
}If ( $AppsInitA69.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[69])
$AppsInitA69.IsChecked = $false
}If ( $AppsInitA70.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[70])
$AppsInitA70.IsChecked = $false
}If ( $AppsInitA71.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[71])
$AppsInitA71.IsChecked = $false
}If ( $AppsInitA72.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[72])
$AppsInitA72.IsChecked = $false
}If ( $AppsInitA73.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[73])
$AppsInitA73.IsChecked = $false
}If ( $AppsInitA74.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[74])
$AppsInitA74.IsChecked = $false
}If ( $AppsInitA75.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[75])
$AppsInitA75.IsChecked = $false
}If ( $AppsInitA76.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[76])
$AppsInitA76.IsChecked = $false
}If ( $AppsInitA77.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[77])
$AppsInitA77.IsChecked = $false
}If ( $AppsInitA78.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[78])
$AppsInitA78.IsChecked = $false
}If ( $AppsInitA79.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[79])
$AppsInitA79.IsChecked = $false
}If ( $AppsInitA80.IsChecked -eq $true ) {
$AppxPackagesRemove.Add($AppxPackages[80])
$AppsInitA80.IsChecked = $false
}If ( $AppsInitP0.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[0])
$AppsInitP0.IsChecked = $false
}If ( $AppsInitP1.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[1])
$AppsInitP1.IsChecked = $false
}If ( $AppsInitP2.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[2])
$AppsInitP2.IsChecked = $false
}If ( $AppsInitP3.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[3])
$AppsInitP3.IsChecked = $false
}If ( $AppsInitP4.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[4])
$AppsInitP4.IsChecked = $false
}If ( $AppsInitP5.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[5])
$AppsInitP5.IsChecked = $false
}If ( $AppsInitP6.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[6])
$AppsInitP6.IsChecked = $false
}If ( $AppsInitP7.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[7])
$AppsInitP7.IsChecked = $false
}If ( $AppsInitP8.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[8])
$AppsInitP8.IsChecked = $false
}If ( $AppsInitP9.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[9])
$AppsInitP9.IsChecked = $false
}If ( $AppsInitP10.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[10])
$AppsInitP10.IsChecked = $false
}If ( $AppsInitP11.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[11])
$AppsInitP11.IsChecked = $false
}If ( $AppsInitP12.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[12])
$AppsInitP12.IsChecked = $false
}If ( $AppsInitP13.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[13])
$AppsInitP13.IsChecked = $false
}If ( $AppsInitP14.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[14])
$AppsInitP14.IsChecked = $false
}If ( $AppsInitP15.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[15])
$AppsInitP15.IsChecked = $false
}If ( $AppsInitP16.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[16])
$AppsInitP16.IsChecked = $false
}If ( $AppsInitP17.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[17])
$AppsInitP17.IsChecked = $false
}If ( $AppsInitP18.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[18])
$AppsInitP18.IsChecked = $false
}If ( $AppsInitP19.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[19])
$AppsInitP19.IsChecked = $false
}If ( $AppsInitP20.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[20])
$AppsInitP20.IsChecked = $false
}If ( $AppsInitP21.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[21])
$AppsInitP21.IsChecked = $false
}If ( $AppsInitP22.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[22])
$AppsInitP22.IsChecked = $false
}If ( $AppsInitP23.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[23])
$AppsInitP23.IsChecked = $false
}If ( $AppsInitP24.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[24])
$AppsInitP24.IsChecked = $false
}If ( $AppsInitP25.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[25])
$AppsInitP25.IsChecked = $false
}If ( $AppsInitP26.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[26])
$AppsInitP26.IsChecked = $false
}If ( $AppsInitP27.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[27])
$AppsInitP27.IsChecked = $false
}If ( $AppsInitP28.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[28])
$AppsInitP28.IsChecked = $false
}If ( $AppsInitP29.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[29])
$AppsInitP29.IsChecked = $false
}If ( $AppsInitP30.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[30])
$AppsInitP30.IsChecked = $false
}If ( $AppsInitP31.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[31])
$AppsInitP31.IsChecked = $false
}If ( $AppsInitP32.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[32])
$AppsInitP32.IsChecked = $false
}If ( $AppsInitP33.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[33])
$AppsInitP33.IsChecked = $false
}If ( $AppsInitP34.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[34])
$AppsInitP34.IsChecked = $false
}If ( $AppsInitP35.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[35])
$AppsInitP35.IsChecked = $false
}If ( $AppsInitP36.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[36])
$AppsInitP36.IsChecked = $false
}If ( $AppsInitP37.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[37])
$AppsInitP37.IsChecked = $false
}If ( $AppsInitP38.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[38])
$AppsInitP38.IsChecked = $false
}If ( $AppsInitP39.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[39])
$AppsInitP39.IsChecked = $false
}If ( $AppsInitP40.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[40])
$AppsInitP40.IsChecked = $false
}If ( $AppsInitP41.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[41])
$AppsInitP41.IsChecked = $false
}If ( $AppsInitP42.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[42])
$AppsInitP42.IsChecked = $false
}If ( $AppsInitP43.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[43])
$AppsInitP43.IsChecked = $false
}If ( $AppsInitP44.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[44])
$AppsInitP44.IsChecked = $false
}If ( $AppsInitP45.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[45])
$AppsInitP45.IsChecked = $false
}If ( $AppsInitP46.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[46])
$AppsInitP46.IsChecked = $false
}If ( $AppsInitP47.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[47])
$AppsInitP47.IsChecked = $false
}If ( $AppsInitP48.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[48])
$AppsInitP48.IsChecked = $false
}If ( $AppsInitP49.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[49])
$AppsInitP49.IsChecked = $false
}If ( $AppsInitP50.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[50])
$AppsInitP50.IsChecked = $false
}If ( $AppsInitP51.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[51])
$AppsInitP51.IsChecked = $false
}If ( $AppsInitP52.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[52])
$AppsInitP52.IsChecked = $false
}If ( $AppsInitP53.IsChecked -eq $true ) {
$AppxProvisionedPackagesRemove.Add($AppxProvisionedPackages[53])
$AppsInitP53.IsChecked = $false
}If ( $AppsInitW0.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[0])
$AppsInitW0.IsChecked = $false
}If ( $AppsInitW1.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[1])
$AppsInitW1.IsChecked = $false
}If ( $AppsInitW2.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[2])
$AppsInitW2.IsChecked = $false
}If ( $AppsInitW3.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[3])
$AppsInitW3.IsChecked = $false
}If ( $AppsInitW4.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[4])
$AppsInitW4.IsChecked = $false
}If ( $AppsInitW5.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[5])
$AppsInitW5.IsChecked = $false
}If ( $AppsInitW6.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[6])
$AppsInitW6.IsChecked = $false
}If ( $AppsInitW7.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[7])
$AppsInitW7.IsChecked = $false
}If ( $AppsInitW8.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[8])
$AppsInitW8.IsChecked = $false
}If ( $AppsInitW9.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[9])
$AppsInitW9.IsChecked = $false
}If ( $AppsInitW10.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[10])
$AppsInitW10.IsChecked = $false
}If ( $AppsInitW11.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[11])
$AppsInitW11.IsChecked = $false
}If ( $AppsInitW12.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[12])
$AppsInitW12.IsChecked = $false
}If ( $AppsInitW13.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[13])
$AppsInitW13.IsChecked = $false
}If ( $AppsInitW14.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[14])
$AppsInitW14.IsChecked = $false
}If ( $AppsInitW15.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[15])
$AppsInitW15.IsChecked = $false
}If ( $AppsInitW16.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[16])
$AppsInitW16.IsChecked = $false
}If ( $AppsInitW17.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[17])
$AppsInitW17.IsChecked = $false
}If ( $AppsInitW18.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[18])
$AppsInitW18.IsChecked = $false
}If ( $AppsInitW19.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[19])
$AppsInitW19.IsChecked = $false
}If ( $AppsInitW20.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[20])
$AppsInitW20.IsChecked = $false
}If ( $AppsInitW21.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[21])
$AppsInitW21.IsChecked = $false
}If ( $AppsInitW22.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[22])
$AppsInitW22.IsChecked = $false
}If ( $AppsInitW23.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[23])
$AppsInitW23.IsChecked = $false
}If ( $AppsInitW24.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[24])
$AppsInitW24.IsChecked = $false
}If ( $AppsInitW25.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[25])
$AppsInitW25.IsChecked = $false
}If ( $AppsInitW26.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[26])
$AppsInitW26.IsChecked = $false
}If ( $AppsInitW27.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[27])
$AppsInitW27.IsChecked = $false
}If ( $AppsInitW28.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[28])
$AppsInitW28.IsChecked = $false
}If ( $AppsInitW29.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[29])
$AppsInitW29.IsChecked = $false
}If ( $AppsInitW30.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[30])
$AppsInitW30.IsChecked = $false
}If ( $AppsInitW31.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[31])
$AppsInitW31.IsChecked = $false
}If ( $AppsInitW32.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[32])
$AppsInitW32.IsChecked = $false
}If ( $AppsInitW33.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[33])
$AppsInitW33.IsChecked = $false
}If ( $AppsInitW34.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[34])
$AppsInitW34.IsChecked = $false
}If ( $AppsInitW35.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[35])
$AppsInitW35.IsChecked = $false
}If ( $AppsInitW36.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[36])
$AppsInitW36.IsChecked = $false
}If ( $AppsInitW37.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[37])
$AppsInitW37.IsChecked = $false
}If ( $AppsInitW38.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[38])
$AppsInitW38.IsChecked = $false
}If ( $AppsInitW39.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[39])
$AppsInitW39.IsChecked = $false
}If ( $AppsInitW40.IsChecked -eq $true ) {
$WingetPackagesInstall.Add($WingetPackages[40])
$AppsInitW40.IsChecked = $false
}

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

#region winget uninstall
Get-Content "winget_uninstall_apps_template.json" | Set-Content "winget_uninstall_apps.json"
try {
    Start-Process notepad -ArgumentList "winget_uninstall_apps.json" -Wait
}
catch {
    Write-Host "NotePad was not found.`nOpen`"$PSScriptRoot\winget_uninstall_apps.json`" and add winget package ids to uninstall.`n" -ForegroundColor Yellow
}

$WingetRemovePackages = ((Get-Content winget_uninstall_apps.json -raw) -replace '(?m)(?<=^([^"]| "[^"]*")*)//.*' -replace '(?ms)/\*.*?\*/') | ConvertFrom-Json
if ($WingetRemovePackages.Count -le 0) {
    Write-Host "No Packages were found." -ForegroundColor Yellow
}
else {
    Write-Host "Packages Found."
}
foreach ($package in $WingetRemovePackages) {
    winget uninstall --id "$package"
}
#endregion

#region Startup Apps
# Start-Process ms-settings:startupapps
# [System.Windows.MessageBox]::Show("Disable: Start up apps") | Out-Null
#endregion
