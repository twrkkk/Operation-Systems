@echo off
setlocal EnableDelayedExpansion


set /p dir="Enter the directory path: "
forfiles /P "%dir%" /M * /C "cmd /c if @fsize GEQ 1048576 echo @path"
pause