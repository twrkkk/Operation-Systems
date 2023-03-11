@echo off
setlocal EnableDelayedExpansion

set /a count=0
set /p dirpath=Enter directory path: 

for /d %%i in ("%dirpath%\*") do ( 
    set /a count+=1
)

echo %count%
pause