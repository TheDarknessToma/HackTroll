@echo off
:loop
if exist "cache\stop" del /f /q "stop" && exit
start "" /wait /min sound.vbs
goto:loop