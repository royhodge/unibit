ECHO OFF
CLS
:MENU
ECHO.
ECHO ...............................................
ECHO PRESS 1, 2 OR 3 to select your task, or 4 to EXIT.
ECHO 
ECHO    __    __            __  _______   __    __     
ECHO   |  \  |  \          |  \|       \ |  \  |  \    
ECHO   | $$  | $$ _______   \$$| $$$$$$$\ \$$ _| $$_   
ECHO   | $$  | $$|       \ |  \| $$__/ $$|  \|   $$ \  
ECHO   | $$  | $$| $$$$$$$\| $$| $$    $$| $$ \$$$$$$  
ECHO   | $$  | $$| $$  | $$| $$| $$$$$$$\| $$  | $$ __ 
ECHO   | $$__/ $$| $$  | $$| $$| $$__/ $$| $$  | $$|  \
ECHO    \$$    $$| $$  | $$| $$| $$    $$| $$   \$$  $$
ECHO     \$$$$$$  \$$   \$$ \$$ \$$$$$$$  \$$    \$$$$ 
ECHO                                                
ECHO
ECHO ...............................................
ECHO.
ECHO 1 - Install UniBit Wallet
ECHO 2 - Generate New UniBit Address
ECHO 3 - Backup UniBit Wallet
ECHO 4 - EXIT
ECHO.
SET /P M=Type 1, 2, 3, or 4 then press ENTER:
IF %M%==1 GOTO INSTALL
IF %M%==2 GOTO GEN
IF %M%==3 GOTO BACKUP
IF %M%==4 GOTO EOF
:INSTALL
start unibit-install.exe
GOTO MENU
:GEN
cd %appdata%\multichain\unibit\
start multichain-cli.exe unibit getnewaddress
GOTO MENU
:BACKUP
cd %appdata%\multichain\unibit\
start multichain-cli.exe dumpwallet "filename"
GOTO MENU



WIP; Please don't attempt to run anything until we release info on the website, 
alot of things are filled with garbage data until 
the governance committee releases timeline.

*Modify this script to open other batch files with their own functions for windows build.
