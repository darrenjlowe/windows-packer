Install-Module -Name PSWindowsUpdate –Force

Get-Package -Name PSWindowsUpdate

Install-WindowsUpdate -AcceptAll -Install -AutoReboot | Out-File "c:\logs\$(get-date -f yyyy-MM-dd)-WindowsUpdate.log" -force