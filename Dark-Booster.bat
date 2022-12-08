@echo off
title Dark-Booster  - Created By DarkMode
color 07
mode 50,20
cls

if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)

start mshta vbscript:Execute("msgbox ""[ Dark-Booster ] Abra a Steam!"":close")



if exist "%systemroot%\System32\aria2c.exe" goto Install01 >nul 2>&1
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/1010789685825654844/1010790122893103124/aria2c.exe" -OutFile "%systemroot%\System32\aria2c.exe" >nul 2>&1
cls

:Install01
if exist "%systemroot%\System32\batbox.exe" goto Install02 >nul 2>&1
aria2c.exe -d "%systemroot%\System32" https://cdn.discordapp.com/attachments/1010789685825654844/1010790123673243719/batbox.exe >nul 2>&1
cls
goto Install02

:Install02
if exist "%systemroot%\System32\GetInput.exe" goto Install03 >nul 2>&1
aria2c.exe -d "%systemroot%\System32" https://cdn.discordapp.com/attachments/1010789685825654844/1010790123228631070/GetInput.exe >nul 2>&1
cls
goto Install03

:Install03
if exist "%systemroot%\System32\Button.bat" goto Install04 >nul 2>&1
aria2c.exe -d "%systemroot%\System32" https://cdn.discordapp.com/attachments/1010789685825654844/1010790136734298163/Button.bat >nul 2>&1
cls
goto Install04

:Install04
if exist "%temp%\gecho.exe" goto Install05 >nul 2>&1
aria2c.exe -d "%temp%" https://cdn.discordapp.com/attachments/1010789685825654844/1010790124092653640/Gecho.exe >nul 2>&1
cls
goto Install05

:Install05
if exist "%temp%\steam-idle.exe" goto Install06 >nul 2>&1
aria2c.exe -d "%temp%" https://cdn.discordapp.com/attachments/1010793445465530380/1010795165541216276/steam-idle.exe >nul 2>&1
cls
goto Install06

:Install06
if exist "%temp%\steam_api.dll" goto HomePage >nul 2>&1
aria2c.exe -d "%temp%" https://cdn.discordapp.com/attachments/1010793445465530380/1010795165268590592/steam_api.dll >nul 2>&1
cls

:Install07
if exist "%temp%\Steamworks.NET.dll" goto HomePage >nul 2>&1
aria2c.exe -d "%temp%" https://cdn.discordapp.com/attachments/1010793445465530380/1050294127914397748/Steamworks.NET.dll >nul 2>&1
cls



:HomePage
Batbox /h 0
title  
color 07
cd %temp%
mode 30,10

echo.
call gecho.exe "<b>        [Dark-Booster]"

Call Button  8 3 "Boost CSGO" 8 6 " CustomID " # Press
Getinput /m %Press% /h 70

if %errorlevel%==1 (goto BoostCSGO)
if %errorlevel%==2 (goto CustomID)

goto HomePage


:: =================================== BOOST CSGO =================================== ::
:: =================================== BOOST CSGO =================================== ::


:BoostCSGO
cls
mode 30,15
cd %temp%
start steam-idle.exe 730
goto HomePage


:: =================================== CUSTOM-ID =================================== ::
:: =================================== CUSTOM-ID =================================== ::


:CustomID
cls
mode 25,5
echo.
call gecho.exe "<y>   Digite o ID do Jogo"
echo.
set/p CustomID="CustomID: "
cd %temp%
start steam-idle.exe %CustomID%
goto HomePage
