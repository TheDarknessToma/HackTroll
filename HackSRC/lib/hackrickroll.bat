@echo off
set loc=%cd%
if "%1"=="" set /p delaay="Delay (in seconds): "
if "%1"=="off" goto off
if "%1"=="return" goto return
if not "%1"=="" goto setdelay
:acti
cd %appdata%\Hack-Troll-Tomkoid
if not exist "cache" mkdir cache
cd cache
echo %delaay% > delay
cd ..
start /MIN ricktimeout.bat
goto cmd

:setdelay
set delaay=%1
goto acti

:off
if exist "%appdata%\Hack-Troll-Tomkoid\cache\stop" echo Already stopped! && goto cmd
mkdir "%appdata%\Hack-Troll-Tomkoid\cache\stop"
taskkill /IM wscript.exe /f
echo Turned off!
goto cmd

:return
if exist "%appdata%\Hack-Troll-Tomkoid\cache\stop" echo Rick Roll not running.. && goto cmd
taskkill /IM wscript.exe /f
echo Returned!
goto cmd

:cmd
cd "%loc%"