### Runs Only on Windows Powershell (not powershell core)
## Appx cmdlet on works in windows powershell
$winget = Get-AppPackage -name 'Microsoft.DesktopAppInstaller'

# remove Microsoft.DesktopAppInstaller and build from source ?

if (!$winget -or [version]$winget.Version -lt [version]"1.10.0.0") {    
        
    "Installing winget dependencies" # https://github.com/microsoft/winget-cli/blob/master/README.md check for deps
    Add-AppxPackage -Path 'https://aka.ms/Microsoft.VCLibs.x64.14.00.Desktop.appx' -ErrorAction SilentlyContinue -Confirm:$false

    $latest_release_url = 'https://api.github.com/repos/microsoft/winget-cli/releases/latest'
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    $request_release = Invoke-RestMethod -uri $latest_release_url
    $latest_release = $request_release.assets | Where-Object { $_.browser_download_url.EndsWith('msixbundle') } | Select-Object -First 1
    #if the file extension of release changes then update EndsWith('new-file-extension')

    "Installing winget from $($latest_release.browser_download_url)"
    Add-AppxPackage -Path $latest_release.browser_download_url -Confirm:$false #answer an automatic true
}