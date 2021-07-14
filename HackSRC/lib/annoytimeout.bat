@echo off
cd %appdata%\Hack-Troll-Tomkoid
if not exist "cache" mkdir cache
cd cache
if exist "stopannoy" rd "stopannoy"
set /p delaay=<delay
timeout /t %delaay%/nobreak>nul
cd C:\Windows\System32
start annoy.bat
exit