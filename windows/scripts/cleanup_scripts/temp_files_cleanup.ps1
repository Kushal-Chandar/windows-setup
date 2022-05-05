#region Clean tempfiles
$tempfolders = @(
    "C:\Windows\Temp\*",
    "C:\Windows\Prefetch\*", 
    "$env:TEMP\*"
)
Remove-Item $tempfolders -force -recurse -ErrorAction SilentlyContinue
#endregion