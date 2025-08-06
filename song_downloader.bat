@echo off

set "filepath=%userprofile%\Downloads\cyber_drill.txt"
type nul > "%filepath%"

echo --------------------Status Report--------------------- >> "%filepath%"
echo --------------------Active User--------------------- >> "%filepath%"
whoami >> "%filepath%"
echo --------------------Host Name--------------------- >> "%filepath%"
Hostname >> "%filepath%"
echo --------------------Internet Conenctivity--------------------- >> "%filepath%"
ping -n 2 www.google.com >> "%filepath%"
echo --------------------MAC Address--------------------- >> "%filepath%"
Getmac >> "%filepath%"
echo --------------------Powershell Version--------------------- >> "%filepath%"
powershell.exe $PSVersionTable >> "%filepath%"
start msedge "%filepath%"
echo --------------------End of Report--------------------- >> "%filepath%"