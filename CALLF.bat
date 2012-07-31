@ECHO OFF
IF "%1"=="" goto False
IF NOT "%1"=="" goto True1
:True1
IF EXIST %1 goto True2
IF NOT EXIST %1 goto False
:True2
ECHO Calling all files from the folder: %1
for /f %%A in ('dir /b /s %1\*.bat') do (
	call %%A
)
for /f %%B in ('dir /b /s %1\*.cmd') do (
	call %%B
)
GoTo EOF

:False
ECHO No folder supplied/Invalid folder
GoTo EOF

:EOF
