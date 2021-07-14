@echo off
set loc=%cd%
if "%1"=="" set /p delaay="Delay (in seconds): "
if "%1"=="off" goto off
if not "%1"=="" goto setdelay
:acti
cd %appdata%\Hack-Troll-Tomkoid
if not exist "cache" mkdir cache
cd cache
echo %delaay% > delay
cd ..
start /MIN wifitimeout.bat
goto cmd

:setdelay
set delaay=%1
goto acti

:off
netsh interface set interface "Ethernet" enable
netsh interface set interface "Wi-Fi" enable
netsh interface set interface "Wi-Fi-2" enable
netsh interface set interface "Wi-Fi-3" enable
netsh interface set interface "Wi-Fi-4" enable
netsh interface set interface "Wi-Fi-5" enable
netsh interface set interface "Wi-Fi-6" enable
netsh interface set interface "Wi-Fi-7" enable
netsh interface set interface "Wi-Fi-8" enable
netsh interface set interface "Wi-Fi-9" enable
netsh interface set interface "Wi-Fi-10" enable
echo Enabled all adapters!
goto cmd

:cmd
cd "%loc%"