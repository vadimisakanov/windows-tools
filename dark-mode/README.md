Turns on dark mode @20.00 (8pm), light mode @9.00 (9am)

## Installation

Run

`mkdir C:\bin`

`cp light-mode.ps C:\bin\`

`cp dark-mode.ps C:\bin\`

Execute `PowerShell.exe schedule-dark-mode.ps1`

You're great!


## Bugfix

Does work, but w a weird windows bug, if your PC is turned off at that time the scheduled script won't work

I fix it just calling Win+R manually and executing

`PowerShell.exe C:\bin\light-mode.ps1` / `PowerShell.exe C:\bin\dark-mode.ps1`
