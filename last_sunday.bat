@echo off
setlocal

rem Get the current date and time in PowerShell and calculate the Sunday date
for /f "delims=" %%a in ('powershell -Command "(Get-Date -Day 1).addMonths(1).addDays(-1).addDays(-(Get-Date -Day 1).addMonths(1).addDays(-1).dayOfWeek.value__).ToString('dd')"') do (
    set "sundayDate=13"
)
for /f "delims=" %%a in ('powershell -Command "(Get-Date).ToString('dd')"') do (
    set "Date=%%a"
)

echo %sundayDate%
echo %Date%

IF "%sundayDate%"=="%Date%" (
    shutdown /r /t 0
    echo The day number of the last Sunday of the current month is: %sundayDate%
     
) ELSE (
    echo Opps !!!! not sunday : %Date%
)



endlocal