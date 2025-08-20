#!/bin/bash

# Digital clock

green='\033[0;32m' # Green color
NC='\033[0m' # No Color 
# Display current time, date, day of the week, and timezone in a loop

while true; do
    clear
    echo -e "${green}Current Time: $(date +%H:%M:%S)${NC}"
    sleep 1
done