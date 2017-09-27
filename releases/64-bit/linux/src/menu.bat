@echo off
title UniBit-Menu
:home
cls
echo.
echo Select a task:
echo =============
echo.
echo 1) Open www.unibit.io
echo 2) Install Framework
echo 3) Open Wallet Interface
echo 4) View Readme
echo 5) Exit
echo.
set /p web=Type option:
if "%web%"=="1" start www.unibit.io
if "%web%"=="2" goto install
if "%web%"=="3" Call wallet.bat
if "%web%"=="4" Call Readme Action
if "%web%"=="5" exit
goto home
:install
Pause
goto home





<!-- Notes 

Save the document as Menu.bat
Then Create another bat-file, call it wallet.bat and save it in the same folder as the above.
Copy this code into it:


echo Note! If you get an error, you need to run
echo this with administrative privileges.
cd\
Pause

-->
