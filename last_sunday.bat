@echo off
setlocal

rem Get the current date and time in PowerShell and calculate the Sunday date
for /f "delims=" %%a in ('powershell -Command "(Get-Date -Day 1).addMonths(1).addDays(-1).addDays(-(Get-Date -Day 1).addMonths(1).addDays(-1).dayOfWeek.value__).ToString('dd')"') do (
    set "lastSunday=%%a"
)

rem Get todays date
for /f "delims=" %%a in ('powershell -Command "(Get-Date).ToString('dd')"') do (
    set "today=%%a"
)

if "%lastSunday%"=="%today%" (
    echo Today is the last sunday of the month. Hence, restarting the server.
    shutdown /r /t 0     
) else (
    echo Today is not last last sunday of the month. Hence, no action taken.
)

endlocal
