#region Clean tempfiles
$tempfolders = @(
    "C:\Windows\Temp\*",
    "C:\Windows\Prefetch\*", 
    "C:\Users\*\Appdata\Local\Temp\*"
)
Remove-Item $tempfolders -force -recurse -ErrorAction SilentlyContinue
#endregion