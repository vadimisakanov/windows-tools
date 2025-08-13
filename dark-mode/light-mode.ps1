# Set registry value to enable light mode for apps
Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "AppsUseLightTheme" -Value 1 -Type DWord -Force

# Optional: Also set system theme to light mode if you want consistent light theme everywhere
Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "SystemUsesLightTheme" -Value 1 -Type DWord -Force

# Restart Explorer to apply the changes immediately
Stop-Process -Name explorer -Force