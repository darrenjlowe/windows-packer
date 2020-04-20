Install-PackageProvider -Name NuGet -Force

Install-Module -Name PSWindowsUpdate -Force

Get-Package -Name PSWindowsUpdate

Install-WindowsUpdate -AcceptAll -Install -AutoReboot