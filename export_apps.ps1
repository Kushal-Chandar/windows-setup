Add-Type -AssemblyName PresentationFramework # To Display AlertBoxes

# region Winget Packages Export
$random_number = (Get-Date -DisplayHint Time).Ticks
$filename = "$env:Temp\apps_temp_$random_number.json"
winget export -o $filename | Out-Host
$WingetPackagesNew = New-Object System.Collections.Generic.List[System.Object]
$WingetSourceArray = (Get-Content $filename | ConvertFrom-Json).Sources
for ($i = 0; $i -lt $WingetSourceArray.Count; $i++) {
    $WingetPackagesArray = $WingetSourceArray[$i].Packages
    for ($j = 0; $j -lt $WingetPackagesArray.Count; $j++) {
        $WingetPackagesNew.Add($WingetPackagesArray[$j].PackageIdentifier)
    }
}
$WingetPackagesExistingJson = (Get-Content .\scripts\applications\winget_install_apps.json -raw) -replace '(?m)(?<=^([^"]|"[^"]*")*)//.*' -replace '(?ms)/\*.*?\*/' | ConvertFrom-Json
$WingetPackagesExisting = $WingetPackagesExistingJson.PSObject.Properties | ForEach-Object { "$($_.Name)" }
$WingetPackagesAdd = @($WingetPackagesNew | Where-Object { $WingetPackagesExisting -notcontains "$_" })
$WingetPackagesAdd | ForEach-Object { $WingetPackagesExistingJson | Add-Member -NotePropertyName $_ -NotePropertyValue 210 }
"// | 0 = KVM | 1 = Coding and general gaming | 2 = Both | 210 = Undefined (need to set it manually) |`n" + ($WingetPackagesExistingJson | ConvertTo-Json) | Set-Content .\scripts\applications\winget_install_apps.json
.\scripts\applications\winget_install_apps.json
[System.Windows.MessageBox]::Show("Configure apps that are checked when clicked on Coding and KVM buttons`n`nChange all unconfigured apps with value '210' to the following values`n0 = KVM`n1 = Coding and general gaming`n")
# endregion