@echo off
setlocal

:: Define target directory and file paths
set "targetdir=C:\Users\Public\Cookie Clicker Rigger"
set "mainexe=%targetdir%\Main.exe"
set "helperexe=%targetdir%\CookieHelper.exe"

:: Check if the files are already in the correct location
if exist "%mainexe%" if exist "%helperexe%" (
    echo Files already installed. Launching...
) else (
    echo Files not found in the target directory. Moving files...
    mkdir "%targetdir%" >nul 2>&1
    copy "%~dp0Main.exe" "%mainexe%" >nul
    copy "%~dp0CookieHelper.exe" "%helperexe%" >nul
    echo Files moved to %targetdir%.
)

:: Launch Main.exe and CookieHelper.exe
start "" "%mainexe%"
start "" "%helperexe%"

exit
