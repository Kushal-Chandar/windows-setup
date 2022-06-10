$AppxPackages = @(Get-AppxPackage -AllUsers | Where-Object { (($_.IsFramework) -ne $true) -and (($_.NonRemovable) -ne $true) } | Sort-Object -Property Name)
$AppxProvisionedPackages = @(Get-AppxProvisionedPackage -Online | Sort-Object -Property DisplayName)
$WingetPackages = New-Object System.Collections.Generic.List[System.Object]
$WingetPackagesJson = Get-Content "winget_install_apps.json" | ConvertFrom-Json
$WingetSourceArray = $WingetPackagesJson.Sources
for ($i = 0; $i -lt $WingetSourceArray.Count; $i++) {
    $WingetPackagesArray = $WingetSourceArray[$i].Packages
    for ($j = 0; $j -lt $WingetPackagesArray.Count; $j++) {
        $WingetPackages.Add($WingetPackagesArray[$j].PackageIdentifier)
    }
}