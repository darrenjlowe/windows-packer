# Copy files to correct locations in prior to sysprep
Write-Host "Copying UK auto unattend file" -ForegroundColor Green
New-Item -Path 'C:\Windows\Preping\Unattend' -ItemType 'Directory' -Force
Copy-Item -Path 'a:\Autounattend.xml' -Destination 'C:\Windows\Preping\Unattend\unattend.xml'

