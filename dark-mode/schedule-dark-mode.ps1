# Allow running PS scripts for your user
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned

# Create dark mode task at 8:00 PM
$ActionDark = New-ScheduledTaskAction -Execute PowerShell.exe -Argument "C:\bin\dark-mode.ps1"
$TriggerDark = New-ScheduledTaskTrigger -Daily -At 20:00
Register-ScheduledTask -TaskName "EnableDarkMode" -Action $ActionDark -Trigger $TriggerDark -Description "Enable dark mode at 8 PM"

# Create light mode task at 9:00 AM
$ActionLight = New-ScheduledTaskAction -Execute "PowerShell.exe" -Argument "C:\bin\light-mode.ps1"
$TriggerLight = New-ScheduledTaskTrigger -Daily -At 09:00
Register-ScheduledTask -TaskName "EnableLightMode" -Action $ActionLight -Trigger $TriggerLight -Description "Enable light mode at 9 AM"
