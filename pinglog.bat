@ECHO OFF

set/p host=host Address: 
set logfile=%~dp0\Log_%host%.log

echo Target Host = %host% > %logfile%
echo Running...

:LOOPSTART
echo: >> %logfile%
echo ============================= >> %logfile%
echo %DATE% %TIME% >> %logfile%
echo ============================= >> %logfile%
ping %host% -n 10 >> %logfile%
GOTO LOOPSTART
