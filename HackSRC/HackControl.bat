@echo off
title HackControl v1.0
set loc=%cd%
:control
cd %loc%
echo    __ __         __     ______         ____
echo   / // /__ _____/ /__  /_  __/______  / / /
echo  / _  / _ `/ __/  '_/   / / / __/ _ \/ / / 
echo /_//_/\_,_/\__/_/\_\   /_/ /_/  \___/_/_/  
echo -------------------------------------------
:controltext
echo 1. Install
echo 2. Uninstall
echo 3. About
echo 4. Join our Discord server
set conch=
set /p conch=": "
if "%conch%"=="1" goto installstart
if "%conch%"=="2" goto uninstallstart
if "%conch%"=="3" goto about
if "%conch%"=="4" goto discord
goto controltext
:installstart
set chi=
set /p chi="Do you want to install Hack troll? (Y/n): "
if "%chi%"=="Y" goto installer
if "%chi%"=="y" goto installer
if "%chi%"=="N" goto cancel
if "%chi%"=="n" goto cancel
goto installstart
:cancel
echo -----------------------------------
echo You cancelled the uninstallation.
echo -----------------------------------
pause
cls
goto control
:installer
cls
echo    __ __         __     ______         ____
echo   / // /__ _____/ /__  /_  __/______  / / /
echo  / _  / _ `/ __/  '_/   / / / __/ _ \/ / / 
echo /_//_/\_,_/\__/_/\_\   /_/ /_/  \___/_/_/  
echo -------------------------------------------
echo Started installing process..
timeout /t 1 /nobreak>nul
cd lib
copy "hack.bat" "C:\Windows\System32"
copy "hackself.bat" "C:\Windows\System32"
copy "hackbsod.bat" "C:\Windows\System32"
:rickoption
echo Choose the option:
echo 1. Start website with rickroll
echo 2. Download rickroll and play it from the computer (recommended)
set rickch=
set /p rickch=": "
if "%rickch%"=="1" goto nsetup
if "%rickch%"=="2" goto rickdownload
goto rickoption
:nsetup
copy "hackrickroll.bat" "C:\Windows\System32"
copy "rickrollbsod.exe" "C:\Windows\System32"
copy "hackhelp.bat" "C:\Windows\System32"
copy "wdizwduiwdkjwdkzuiwdzukidwz.exe" "C:\Windows\System32"
cd %appdata%
if not exist "Hack-Troll-Tomkoid" mkdir Hack-Troll-Tomkoid
cd Hack-Troll-Tomkoid
cd %loc%\lib
copy "BluescreenSimulator.exe" "%appdata%\Hack-Troll-Tomkoid"
copy "sound.vbs" "%appdata%\Hack-Troll-Tomkoid"
copy "ricker.bat" "%appdata%\Hack-Troll-Tomkoid"
copy "ricktimeout.bat" "%appdata%\Hack-Troll-Tomkoid"
echo Done.
pause>nul
cls
goto control

:uninstallstart
:chuu
set chu=
set /p chu="Do you want to uninstall Hack troll? (Y/n): "
if "%chu%"=="Y" goto uninstaller
if "%chu%"=="y" goto uninstaller
if "%chu%"=="N" goto cancelu
if "%chu%"=="n" goto cancelu
goto uninstallstart
:cancelu
echo -----------------------------------
echo You cancelled the uninstallation.
echo -----------------------------------
pause
cls
goto control
:uninstaller
cls
echo    __ __         __     ______         ____
echo   / // /__ _____/ /__  /_  __/______  / / /
echo  / _  / _ `/ __/  '_/   / / / __/ _ \/ / / 
echo /_//_/\_,_/\__/_/\_\   /_/ /_/  \___/_/_/  
echo -------------------------------------------
echo Started uninstalling process..
timeout /t 1 /nobreak>nul
cd C:\Windows\System32
del /f /q "hack.bat"
del /f /q "hackself.bat"
del /f /q "hackbsod.bat"
del /f /q "hackhelp.bat"
del /f /q "wdizwduiwdkjwdkzuiwdzukidwz.exe"
cd %appdata%
del /f /q "Hack-Troll-Tomkoid"
echo Done.
pause
cls
goto control

:rickdownload
cd %appdata%
if not exist "Hack-Troll-Tomkoid" mkdir Hack-Troll-Tomkoid
cd Hack-Troll-Tomkoid
echo Downloading..
echo --------------------------------------------------------------------------------------
curl https://fastadb.thedarknesstoma.repl.co/rick.mp3 --output rick.mp3
echo --------------------------------------------------------------------------------------
if exist "rick.mp3" echo Downloaded!
if not exist "rick.mp3" echo Something went wrong.. && goto rickoption
cd %loc%\lib
goto nsetup

:about
echo --------------------------------
echo Version: 1.0
echo Coded by: Tomkoid
echo Thanks to: Vyklepanyrizek
echo Bluescreen used: https://github.com/FlyTechVideos/BluescreenSimulator
echo Help command: hackhelp
echo --------------------------------
goto controltext

:discord
if exist "C:\Windows\System32\hackbsod.bat" start https://discord.gg/yrGN54B8FB && echo -------------------------------- && echo Successfuly popuped.. && echo --------------------------------
if not exist "C:\Windows\System32\hackbsod.bat" echo ---------------------------------------- && echo You do not have installed program.. && echo ----------------------------------------
goto controltext