# windows-packer
Building Windows systems with Packer

On Windows 10, enable HyperV if its not already enabled

Create a Switch in HyperV so you can get an IP Address, currently setup to be called external_switch

Change Packer-Files\Windows-2019\Windows-2019-hyperV.json

"switch_name": "external_switch",

This should match your Switch name that get a DHCP Address

Create ISO Directory Structure
ISO\Windows-2019

Add ISO file to Windows-2019 Directory

change Packer-Files\Windows-2019\Windows-2019-hyperV.json

"iso_url": "C:/Users/darre/Documents/git/packer/ISO/Windows-2019/SW_DVD9_Win_Server_STD_CORE_2019_1809.2_64Bit_English_DC_STD_MLF_X22-18452.ISO",

With relevant ISO name

Run
packer build ./Packer-Files\Windows-2019\Windows-2019-hyperV.json