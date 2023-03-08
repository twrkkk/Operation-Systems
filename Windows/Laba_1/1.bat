@echo off

set /a count=0

if "%~1"=="" (
  echo Usage: %0 directory
  exit /b 1
)

set "dir=%~1"

if not exist "%dir%" (
  echo Directory does not exist: %dir%
  exit /b 1
)

echo Counting non-hidden subdirectories in "%dir%"...

call :count "%dir%"
echo Total count: %count%
exit /b 0

:count
for /d %%a in ("%~1\*") do (
  if not "%%~a"=="%~dpnx1\." (
    if not "%%~a"=="%~dpnx1\.." (
      if not "%%~a"=="%~dpnx1" (
        if not "%%~a"=="%~dpnx1\*" (
          if not "%%~a"=="%~dpnx1\desktop.ini" (
            set /a count+=1
          )
        )
      )
    )
  )
  call :count "%%~a"
)
exit /b 0
To use this script, save it as a .bat file and run it with the directory name as the only argument. For example:

Copy code
countdir.bat C:\Users\Username\Documents
This will count the number of non-hidden subdirectories in the Documents folder of the user "Username" on drive C:.





