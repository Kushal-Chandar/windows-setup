# Run in Windows powershell

#Remove system restore point frequency limit
New-Itemproperty -path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" `
    -Name SystemRestorePointCreationFrequency -PropertyType DWord -value 0 -Force

Enable-ComputerRestore -Drive "C:\"
vssadmin resize shadowstorage /for=c: /on=c: /maxsize=10GB
