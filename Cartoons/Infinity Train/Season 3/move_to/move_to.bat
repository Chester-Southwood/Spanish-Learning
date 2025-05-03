@echo off
setlocal enabledelayedexpansion

REM === Set your target folder here (absolute or relative path) ===
set "TARGET=C:\Users\chest\Downloads\Season 3"

REM === Loop through each item in the current directory ===
for %%F in (*) do (
    REM Create subfolder inside the target folder named after the item
    set "name=%%~nF"
    mkdir "%TARGET%\!name!" >nul 2>&1

    REM Move the item into its corresponding subfolder
    move "%%F" "%TARGET%\!name!\" >nul
)

echo Done!
pause