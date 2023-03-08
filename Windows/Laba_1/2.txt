@echo off
setlocal EnableDelayedExpansion

set /a count=0

for /r "%1" %%d in (*) do (
    if /i not "%%~ad"=="d" continue
    set "attr=%%~ad"
    set "attr=!attr:~1,3!"
    if /i "!attr!"=="h" continue
    set /a count+=1
)

echo The number of non-hidden subdirectories in "%1" is %count%