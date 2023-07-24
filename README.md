<h1>Window 10 server Restart By Specific Interval Of Time</h1>

1. Create a File With .bat Extension  
2. Write Script This .bat 
3. copy this code write bellow and save in .bat file  
```
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
```
4. save this code 
5. open task Scheduler and click create basic task   <image src="./image/pic2.png" width='700' >  
6. name this task and description add task description    
7. next button click  
8. select task trigger for daily restart that why select daily trigger   <image src="./image/pic3.png" width='700'>
9. click next button  
10. select time setup in daily  
11. then select next button  
12. action page start a program   <image src="./image/pic4.png" width='700' >    
13. then click next button  
14. select .bat file in browse input box skip all the option  <image src="./image/pic5.png" width='700'>
15. then click next button  
16. summary page click finish button start this task  <image src="./image/pic6.png" width='700'>


after start this task window server automatically restart specific day and time

<h1>ubuntu server Restart By Specific Interval Of Time</h1>

1. Create a bash File With .sh Extension  
2. Write Script This .sh 
3. make a folder and name of this folder is script ,copy the code write bellow and save this in .sh file keep on script folder
```
#!/bin/bash

# Get the current year and month
year=$(date +%Y)
month=$(date +%m)
today=$(date +%d)

# Calculate the last day of the current month
last_day=$(cal $(date +%m) $(date +%Y) | awk 'NF {DAYS = $NF} END {print DAYS}')

# Loop through the days of the month in reverse order
for ((day=last_day; day>=1; day--))
do
    # Get the day of the week for each day
    weekday=$(date -d "$year-$month-$day" +%a)
    
    # If the day is a Sunday, it is the last Sunday of the month
    if [ "$weekday" == "Sun" ]; then
        last_sunday="$day"
        break
    fi
done

echo "The last Sunday of the month is: $last_sunday and today $today"

if [ "$last_sunday" == 30 ]; then
	echo "Today is the last sunday of this month"
	/sbin/shutdown -r now
else
	echo "Oops! Today is not the last sunday of this month"
fi
``` 
4. save this code 
5. then open terminal change directory go to folder script
6. write on terminal `pwd` and get root path of folder save this exm : `cd/Home/<systemusername>/script`
5. open ubuntu terminal and write this commend `sudo crontab -e`  
6. set time when restart server automatically
7. set restart time help cron helper <image src="./image/ubuntu.png" width='700'>
8. after set restart time write  root path exm:  `cd/Home/<username>/script` that get and save useing `pwd` 
9. after write `&& bash filename.sh >> test.log`
10. if server restart 10.40 am sepcific day and time . use code in terminal like this 
 `40 10 * * * cd/Home/<systemusername>/sccript && bash filename.sh >> test.log`
 follow this picture if any problem set restart time and cmd <image src="./image/ubuntu3.png" width='700'>

after set this ubuntu server automatically restart on specific day and time
 
