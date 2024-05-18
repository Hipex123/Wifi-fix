@echo off
REM Set the file containing the commands
set commandsFile="%~dp0fix_commands.txt"

REM Check if the commands file exists
if not exist %commandsFile% (
    echo Commands file not found: %commandsFile%
    exit /b 1
)

REM Read and execute each command from the file
for /f "usebackq delims=" %%a in (%commandsFile%) do (
    echo Executing: %%a
    %%a
)
