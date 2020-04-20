# Copy files to correct locations in prior to sysprep
Write-Host "Copying auto unattend file" -ForegroundColor Green
New-Item -Path 'C:\Windows\Panther\Unattend' -ItemType 'Directory' -Force
Copy-Item -Path 'a:\Post_Autounattend.xml' -Destination 'C:\Windows\Panther\Unattend\unattend.xml'

