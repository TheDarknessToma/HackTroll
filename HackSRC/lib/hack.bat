@echo off
set loc=%cd%
if "%1"=="" echo Usage: [NAME] && goto cmd
set namee=%1
echo Hacking %namee%..
timeout /t 3 /nobreak>nul
echo Hacked!

:cmd
cd "%loc%"