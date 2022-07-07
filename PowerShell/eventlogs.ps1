Get-WinEvent -ListLog * | Sort-Object -Descending "RecordCount" | select LogName, RecordCount

Get-WinEvent System -Oldest | select -First 10 | Format-Table Index,Source,Message

Get-WinEvent System | Where-Object { $_.Message -match "disk" } 

Get-WinEvent System | Where-Object { $_.Message -match "disk" } | select -first 10 | format-list *

Get-WinEvent Microsoft-Windows-PowerShell/Operational | Where-Object { $_.Properties[2].Value -match "Invoke-WebRequest" } | format-list *

Get-WinEvent System | Group-Object Message | Sort-Object -Descending Count

New-EventLog -LogName ScriptEvents -Source PowerShellTraining 

Write-EventLog -LogName ScriptEvents -Source PowerShellTraining -EventId 1234 -Message "Script Eventing Message"
