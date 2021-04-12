@echo off
title CommandOS
color 1A
if "%1" neq "" (goto %1)
:Menu
cls
echo 1. Start the OS
echo 2. Exit the OS
set /p answer=Type the number of your option and click enter:
if %answer%==1 goto Start_the_OS
if %answer%==2 goto Exit_the_OS
:Safe_mode
cls
echo Safe Mode
echo 1. Boot to Normal Mode
echo 2. Shutdown
echo 3. View System Info
echo 4. Main Menu
set /p answer=Type a number of your option:
if %answer%==1 goto Normal_Start
if %answer%==2 goto Exit_The_OS
if %answer%==3 goto System_Info
if %answer%==4 goto Menu

:System_Info
cls
@ECHO OFF 
:: This batch file reveals OS, hardware, and networking configuration.
ECHO Please wait... Checking system information.
:: Section 1: OS information.
ECHO ============================
ECHO OS INFO
ECHO ============================
systeminfo | findstr /c:"OS Name"
systeminfo | findstr /c:"OS Version"
systeminfo | findstr /c:"System Type"
:: Section 2: Hardware information.
ECHO ============================
ECHO HARDWARE INFO
ECHO ============================
systeminfo | findstr /c:"Total Physical Memory"
wmic cpu get name
:: Section 3: Networking information.
ECHO ============================
ECHO NETWORK INFO
ECHO ============================
ipconfig | findstr IPv4
ipconfig | findstr IPv6
pause
goto Safe_Mode
:Exit_the_OS
cls
echo Thanks for running CommandOS!
pause
exit /b
:Settings
:Start_the_OS
cls
echo Start the OS
echo 1. Normal Start
echo 2. Safe Mode
set /p answer=Type the number of a start option, and click enter:
if %answer%==1 goto Normal_Start
if %answer%==2 goto Safe_Mode
pause
:Normal_Start
cls
echo Welcome to CommandOS!
echo Login to CommandOS
set /p answer=Enter a Username:
set /p answer=Type password:
echo Login detected, Welcome
:Desktop
cls
echo   ================================= Desktop =================================
echo 1. Recycle Bin
echo 2. Safe Mode
echo 3. View System Info
echo 4. Main Menu 
echo 5. Welcome to CommmandOS
echo 6. Internet Info
echo 7. Terminal
echo 8. Fidgeter
echo 9. ErrorTest
echo 10. WinDOS
echo 11. Useless Game
set /p answer=Type the number of a File or a Folder and CommandOS will open it for you:
if %answer%==1 goto Recycle_Bin
if %answer%==2 goto Safe_Mode
if %answer%==3 goto Sysinfo
if %answer%==4 goto Menu
if %answer%==5 goto Welcome_To_Command_OS
if %answer%==6 goto Current_Internet_Connections
if %answer%==7 goto Terminal
if %answer%==8 goto Fidgeter
if %answer%==9 goto Error_Code
if %answer%==DEBUG goto Debug_Code_NEEDS_FIXING
if %answer%==10 goto WinDOS
if %answer%==11 goto useless

:useless
cls
pause
goto Desktop

:WinDOS
cls
echo Type "exit" to Exit
echo Type "new" to create a VM
echo Type "run" to run a VM
set /p answer=
if %answer%==new goto new_vm
if %answer%==exit goto Desktop
if %answer%==run goto RUN

:RUN
cls
echo Running....
pause
goto CommandOSStarterOS

:CommandOSStarterOS
cls
echo CommandOS StarterOS
echo This Version of CommandOS is for test purposes only
echo Nothing is here
pause 
goto Quit_a_VM

:Quit_a_VM
cls
echo 1. Shutdown
echo 2. Go back to WinDOS
echo 3. ér'rór
set /p answer=Type your answer:
if %answer%==1 goto Exit_the_OS
if %answer%==2 goto WinDOS
if %answer%==3 goto Error_Code

:new_vm
cls
echo Name:
set /p answer=
goto second_stage

:second_stage
cls
echo Memory:
set /p answer=
goto third_stage

:third_stage
cls
echo Type the location of where the VM will be located:
set /p answer=
goto Finish

:Finish
cls
pause
goto WinDOS
 

:Debug_Code_NEEDS_FIXING
cls
echo DEBUG MODE (NEEDS FIXING)
systeminfo | findstr /c:"Total Physical Memory"
wmic cpu get name

:Error_Code
cls
echo CommandOS ran into a problem it could not handle and needs to restart
echo Error Code: 9x000879 0006x8888 88888x72
pause
goto Menu

:Fidgeter
cls
echo Fidgeter!
echo Type random letters into the box below, This is the box also used to do the exit command, so make sure you do not type too much.
echo Type "exit" to Exit Fidgeter
echo Don't click enter or else Fidgeter will glitch out.
set /p answer=
if %answer%==exit goto Desktop 

:Terminal
cls
echo CommandOS Terminal
echo Type "exit" to Exit the Terminal
set /p answer=
if %answer%==exit goto Desktop
if %answer%==showos goto Show_OS
if %answer%==shutdown goto Exit_for_terminal
if %answer%==credits goto credits
if %answer%==showhostos goto HostSystemInfo
if %answer%==connectinfo goto interinfo
if %answer%==create/folder/con goto Error_Code
if %answer%==create/folder/drivrs/root goto Error_Code

:interinfo
cls
ipconfig
pause
goto Terminal

:HostSystemInfo
cls
systeminfo | findstr /c:"OS Name"
systeminfo | findstr /c:"OS Version"
systeminfo | findstr /c:"System Type"
pause
goto Terminal


:credits
cls
echo Creator: Thomas Schembri
echo Made on: HP Pavilion 23 and Acer Aspire Switch 10
echo Code: Windows Batch Language
pause
goto Terminal

:Exit_for_terminal
exit /b

:Show_OS
echo Current OS: CommandOS
pause
goto Terminal 

:Welcome_To_Command_OS
cls
echo Welcome  to CommandOS, thanks for using us!
pause
goto Desktop

:Current_Internet_Connections
cls 
ECHO ============================
ECHO NETWORK INFO
ECHO ============================
ipconfig | findstr IPv4
ipconfig | findstr IPv6
PAUSE
goto Desktop

:Recycle_Bin
cls
echo 1. Back to Desktop
set /p answer=Type a number of a File or folder:
if %answer%==1 goto Desktop
:Sysinfo
cls
@ECHO OFF 
:: This batch file reveals OS, hardware, and networking configuration.
ECHO Please wait... Checking system information.
:: Section 1: OS information.
ECHO ============================
ECHO OS INFO
ECHO ============================
systeminfo | findstr /c:"OS Name"
systeminfo | findstr /c:"OS Version"
systeminfo | findstr /c:"System Type"
:: Section 2: Hardware information.
ECHO ============================
ECHO HARDWARE INFO
ECHO ============================
systeminfo | findstr /c:"Total Physical Memory"
wmic cpu get name
:: Section 3: Networking information.
ECHO ============================
ECHO NETWORK INFO
ECHO ============================
ipconfig | findstr IPv4
ipconfig | findstr IPv6
PAUSE
goto Desktop





