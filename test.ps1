# test.ps1 - TP Rubber Ducky
$msg  = "TP Rubber Ducky : script telecharge et execute le $(Get-Date)"
$path = "$env:USERPROFILE\Desktop\preuve_tp.txt"
Set-Content -Path $path -Value $msg