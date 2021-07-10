@echo off
cd %appdata%\Hack-Troll-Tomkoid
if not exist "cache" mkdir cache
cd cache
if exist "stop" rd "stop"
set /p delaay=<delay
timeout /t %delaay%/nobreak>nul
cd C:\Windows\System32
if not exist "%appdata%\Hack-Troll-Tomkoid\rick.mp3" start https://youtu.be/KHYFnthR3Vo
if exist "%appdata%\Hack-Troll-Tomkoid\rick.mp3" cd %appdata%\Hack-Troll-Tomkoid && start /MIN ricker.bat
cd C:\Windows\System32
start rickrollbsod.exe
exit