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
