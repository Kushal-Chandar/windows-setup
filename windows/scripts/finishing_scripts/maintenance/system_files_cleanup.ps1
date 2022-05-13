#region Clean System Files (Excluding Recycle Bin)
Get-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\*'`
| where-object { ($_.PSChildName -ne 'Recycle Bin') -and ($_.PSChildName -ne 'Previous Installations') }`
| where-object { New-ItemProperty -Path $_.PSPath -Name stateflags0007 -value 2 -propertytype Dword -Force }`
| Out-Null
Start-Process -FilePath CleanMgr.exe -ArgumentList '/sagerun:7' -Verb RunAs 
#endregion