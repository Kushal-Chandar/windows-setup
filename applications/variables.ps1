$AppxPackages = @(Get-AppxPackage -AllUsers | Where-Object { (($_.IsFramework) -ne $true) -and (($_.NonRemovable) -ne $true) } | Sort-Object -Property Name )  
$AppxPackages | ForEach-Object { $_ | Add-Member -MemberType NoteProperty -Name "IsChecked" -Value $false }
$AppxPackagesBase = Get-Content appx_packages_base.json | ConvertFrom-Json
$AppxPackages | Where-Object { $AppxPackagesBase -Contains $_.Name } | ForEach-Object { $_.IsChecked = $true }

$AppxProvisionedPackages = @(Get-AppxProvisionedPackage -Online | Sort-Object -Property DisplayName)
$AppxProvisionedPackages | ForEach-Object { $_ | Add-Member -MemberType NoteProperty -Name "IsChecked" -Value $false }
$AppxProvisionedPackagesBase = Get-Content appx_provisioned_packages_base.json | ConvertFrom-Json
$AppxProvisionedPackages | Where-Object { $AppxProvisionedPackagesBase -Contains $_.PackageName } | ForEach-Object { $_.IsChecked = $true }

$WingetPackagesJson = (Get-Content "winget_install_apps.json" -raw) -replace '(?m)(?<=^([^"]|"[^"]*")*)//.*' -replace '(?ms)/\*.*?\*/' | ConvertFrom-Json
$WingetHashTable = [ordered]@{}
foreach ($property in $WingetPackagesJson.PSObject.Properties) {
    $WingetHashTable[$property.Name] = $property.Value
}
$WingetPackages = $WingetHashTable.keys.ForEach('ToString')