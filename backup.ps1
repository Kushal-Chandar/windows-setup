winget export -o apps_temp.json | Out-Host
$WingetPackagesExisting = @(((Get-Content .\scripts\applications\winget_install_apps.json -raw) -replace '(?m)(?<=^([^"]|"[^"]*")*)//.*' -replace '(?ms)/\*.*?\*/' | ConvertFrom-Json).PSObject.Properties | Select-Object Name, Value)
$WingetPackagesNew = New-Object System.Collections.Generic.List[System.Object]
$WingetSourceArray = (Get-Content .\apps_temp.json | ConvertFrom-Json).Sources
for ($i = 0; $i -lt $WingetSourceArray.Count; $i++) {
    $WingetPackagesArray = $WingetSourceArray[$i].Packages
    for ($j = 0; $j -lt $WingetPackagesArray.Count; $j++) {
        $WingetPackagesNew.Add($WingetPackagesArray[$j].PackageIdentifier)
    }
}
$WingetPackagesExisting
$WingetPackagesNew