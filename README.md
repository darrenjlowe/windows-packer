# windows-packer
Building Windows systems with Packer

Install Packer

Git Clone this repo, then cd into it

On Windows 10, enable HyperV if its not already enabled

Create a Switch in HyperV so you can get an IP Address from you network, currently setup to be called external_switch

Change Packer-Files\Windows-2019-HyperV-Standard-GUI\Windows-2019-hyperv-gui-base.json if you have a different switch name

"switch_name": "external_switch",

This should match your Switch name that get a DHCP Address

Create ISO Directory Structure
ISO\Windows-2019

Add ISO file to Windows-2019 Directory

change Packer-Files\Windows-2019-HyperV-Standard-GUI\Windows-2019-hyperv-gui-base.json if you use a different ISO Directory structure, or you are pulling from a HTTP source

"iso_url": "C:/Users/darre/Documents/git/packer/ISO/Windows-2019/SW_DVD9_Win_Server_STD_CORE_2019_1809.2_64Bit_English_DC_STD_MLF_X22-18452.ISO",

With relevant ISO name

Run
packer build ./Packer-Files\Windows-2019-HyperV-Standard-GUI\Windows-2019-hyperv-gui-base.json

This will get a basic VM Built, that will be disconnected from Hyper-V

Now run packer build ./Packer-Files\Windows-2019-HyperV-Standard-GUI\Windows-2019-hyperv-gui-updates.json

This will update the basic VM with all windows patches

By having separate JSON files that build on top of each other, if there is a failure, as its broken down into multiple JSON files, we can modify and ru-run the packer build that failed, without starting from scratch

For the last JSON file to sysprep the image, this builds on top of the previous packer image, Windows_Updates.json

Now run packer build ./Packer-Files\Windows-2019-HyperV-Standard-GUI\Windows-2019-hyperv-gui-sysprep.json

You should now have a Hyper-V sysprep'd Windows 2019 Standard Server with Desktop Experience

For Windows 2019 Core

packer build ./Packer-Files\Windows-2019-HyperV-Standard-Core\Windows-2019-hyperv-core-base.json

packer build ./Packer-Files\Windows-2019-HyperV-Standard-Core\Windows-2019-hyperv-core-updates.json

packer build ./Packer-Files\Windows-2019-HyperV-Standard-Core\Windows-2019-hyperv-core-sysprep.json

Added VMWare Builds - Not fully tested