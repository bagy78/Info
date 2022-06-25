Get-Command *Computer
Get-Command -Module PSScheduledJob | Sort-Object Noun, Verb
Show-ControlPanelItem -CanonicalName Microsoft.DeviceManager
Get-ControlPanelItem
Get-Command *job*
Get-Service | Where-Object {$_.Status -eq "Stopped"}
Get-EventLog System -Newest 100 | where {$_.EntryType -match "Error"}

PS C:\Users\bbg> Get-MpComputerStatus | Select-Object -Property AntivirusEnabled, AntispywareSignatureVersion