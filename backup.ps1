# region Winget Packages Export
winget export -o apps_temp.json | Out-Host
$WingetPackagesExistingJson = (Get-Content .\scripts\applications\winget_install_apps.json -raw) -replace '(?m)(?<=^([^"]|"[^"]*")*)//.*' -replace '(?ms)/\*.*?\*/' | ConvertFrom-Json
$WingetPackagesExisting = $WingetPackagesExistingJson.PSObject.Properties | ForEach-Object { "$($_.Name)" }
$WingetPackagesNew = New-Object System.Collections.Generic.List[System.Object]
$WingetSourceArray = (Get-Content .\apps_temp.json | ConvertFrom-Json).Sources
for ($i = 0; $i -lt $WingetSourceArray.Count; $i++) {
    $WingetPackagesArray = $WingetSourceArray[$i].Packages
    for ($j = 0; $j -lt $WingetPackagesArray.Count; $j++) {
        $WingetPackagesNew.Add($WingetPackagesArray[$j].PackageIdentifier)
    }
}
$WingetPackagesAdd = @($WingetPackagesNew | Where-Object { $WingetPackagesExisting -notcontains "$_" })
$WingetPackagesAdd | ForEach-Object { $WingetPackagesExistingJson | Add-Member -NotePropertyName $_ -NotePropertyValue 210 }
"// | 0 = KVM | 1 = Coding and general gaming | 2 = Both | 210 = Undefined (need to set it manually) |`n" + ($WingetPackagesExistingJson | ConvertTo-Json) | Set-Content .\scripts\applications\winget_install_apps.json
.\scripts\applications\winget_install_apps.json
# endregion




Start-Process "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Google Drive.lnk"