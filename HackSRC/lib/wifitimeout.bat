@echo off
cd %appdata%\Hack-Troll-Tomkoid
if not exist "cache" mkdir cache
cd cache
if exist "stopwifi" rd "stopwifi"
set /p delaay=<delay
timeout /t %delaay%/nobreak>nul
cd ..
start /MIN wifidisabler.bat
exit