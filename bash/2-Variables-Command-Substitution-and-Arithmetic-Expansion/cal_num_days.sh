#!/bin/bash
# Calculating the number of days between two specific dates using epoch time
date1="1976-11-28"
date2="2025-08-07"

epoch1=$(date -d "$date1" +%s)
epoch2=$(date -d "$date2" +%s)

days=$(( (epoch2 - epoch1) / 86400 ))
years=$(( days / 365 ))
months=$(( (days % 365) / 30 ))
echo "Number of days between $date1 and $date2: $days"
echo "Number of years between $date1 and $date2: $years"
echo "Number of months between $date1 and $date2: $months"
