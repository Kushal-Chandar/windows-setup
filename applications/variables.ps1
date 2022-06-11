$AppxPackages = @(Get-AppxPackage -AllUsers | Where-Object { (($_.IsFramework) -ne $true) -and (($_.NonRemovable) -ne $true) } | Sort-Object -Property Name)
$AppxProvisionedPackages = @(Get-AppxProvisionedPackage -Online | Sort-Object -Property DisplayName)
$WingetPackagesJson = (Get-Content "winget_install_apps.json" -raw) -replace '(?m)(?<=^([^"]|"[^"]*")*)//.*' -replace '(?ms)/\*.*?\*/' | ConvertFrom-Json
$WingetHashTable = [ordered]@{}
foreach ($property in $WingetPackagesJson.PSObject.Properties) {
    $WingetHashTable[$property.Name] = $property.Value
}
$WingetPackages = $WingetHashTable.keys.ForEach('ToString')