# Nightscout API wrapper

Lear more about Nightscout [here](https://nightscout.github.io/)

## Quick start

```ps
Import-Module ./Nightscout.psm1
Set-BGServer https://myserver.domain:port
Get-BGLastValue -Verbose
```

## Issues

- Issues that are currently being worked on - [link](https://github.com/iricigor/Nightscout/milestone/1)
- All issues - [link](https://github.com/iricigor/Nightscout/issues)
- Raise a new issue - [link](https://github.com/iricigor/Nightscout/issues/new/choose)
 
## List of commands

### 🩸 Blood Glucose management
- Get-BGLastValue
- Get-BGValues

### ⚙️ Configuration management
- Get-BGConfig
- Set-BGServer
- Set-BGAPIKey

### 🖥️ Nightscout Server status
- Get-BGServerStatus
- Get-BGServerSettings
