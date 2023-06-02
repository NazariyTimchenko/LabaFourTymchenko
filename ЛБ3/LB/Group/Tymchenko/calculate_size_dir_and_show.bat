@echo off

set "total_size=0"

if "%1"=="" (
  echo You need to specify the path to the directory.
  echo Example: %0 "C:\Users\Username\Documents"
  pause
  exit /b 1
)

set "dir=%~1"

if not exist "%dir%" (
    echo Directory "%dir%" does not exist.
    pause
    exit /b 1
)

echo Content of directory %dir%:
echo ------------------------------------

for /r "%dir%" %%f in (*) do (
    dir "%%f" /a:-h-r-s-a | find "File(s)"
    set /a "total_size+=%%~zf"
    echo %%f
)

echo ------------------------------------
echo Total size of files in directory %dir%: %total_size% bytes
pause
exit /b 0