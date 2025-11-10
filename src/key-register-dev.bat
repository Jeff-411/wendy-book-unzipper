REM key-register-dev.bat (DEV) - register EXTRACT BOOK to run src/index.js with src\.env
@echo off
REM SECURITY-SENSITIVE: Requires Administrator privileges to modify HKCR
NET FILE 1>NUL 2>NUL
if '%errorlevel%' NEQ '0' (
    powershell -Command "Start-Process cmd.exe -ArgumentList '/c %~dpnx0' -Verb RunAs"
    exit /B
)

REM Script directory (this file lives in src\)
SET ScriptDir=%~dp0
IF %ScriptDir:~-1%==\ SET ScriptDir=%ScriptDir:~0,-1%

echo.
echo Registering "EXTRACT BOOK" (DEV) to run src\index.js...

REM CRITICAL: Node path must exist on the dev machine
set "NodeExe=C:\Program Files\nodejs\node.exe"
REM CRITICAL: since this script is in src\, point directly to index.js in same folder
set "ScriptPath=%ScriptDir%\index.js"
REM Optional: use Node.exe icon
set "IconPath=%NodeExe%,0"

REM Validation
IF NOT EXIST "%NodeExe%" (
  echo ERROR: node.exe not found at "%NodeExe%"
  exit /B 1
)
IF NOT EXIST "%ScriptPath%" (
  echo ERROR: src\index.js not found at "%ScriptPath%"
  exit /B 1
)

REM Write registry keys (DEV)
REG ADD "HKEY_CLASSES_ROOT\SystemFileAssociations\.zip\shell\Extract_Book" /ve /d "EXTRACT BOOK" /f
REG ADD "HKEY_CLASSES_ROOT\SystemFileAssociations\.zip\shell\Extract_Book" /v "Icon" /t REG_SZ /d "%IconPath%" /f
REG ADD "HKEY_CLASSES_ROOT\SystemFileAssociations\.zip\shell\Extract_Book\command" /ve /t REG_SZ /d "\"%NodeExe%\" \"%ScriptPath%\" \"%%1\"" /f

IF %ERRORLEVEL% EQU 0 (
  echo DEV registration complete.
  echo.
  echo Verify current command:
  reg query "HKEY_CLASSES_ROOT\SystemFileAssociations\.zip\shell\Extract_Book\command" /ve
) ELSE (
  echo Registration failed. Error code: %ERRORLEVEL%
)
pause