#!/bin/bash

# Server Utilization

# Colors
RED='\033[2;31m'
GREEN='\033[1;32m'
NC='\033[0m' # No Color

divider () {
    echo -e "${RED}======================================================${NC}"
}

echo -e "                 ${RED}****************************${NC}"
echo -e "                 ${GREEN}**** Server Utilization ****${NC}"
echo -e "                 ${RED}****************************${NC}"
divider
echo
echo -e "Date: $(date)"
echo
divider
echo
echo "Uptime: $(uptime)"
echo
divider
echo "Currently logged in users:"
echo "$(w)"
echo
divider
echo "Last login details:"
echo "$(last -a | head -n 3)"
echo
divider
echo "Disk and Memory Usage:"
echo "$(df -h | grep -E '^/dev/' | awk '{print "Free/Total Disk: " $4 "/" $2}')"
echo
echo "$(free -h | awk '/^Mem/ {print "Free/Total Memory: " $4 "/" $2}')"
echo
divider
echo "CPU Usage:"
echo "$(top -bn1 | grep "Cpu(s)" | awk '{print "Usage: " $2 + $4 "%"}')"
echo
divider
echo "Top 5 processes by CPU usage:"
echo "$(ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 6)"
echo
divider
echo "Top 5 processes by memory usage:"
echo "$(ps -eo pid,comm,%cpu,%mem --sort=-%mem | head -n 6)"
echo
divider
echo "Network Statistics:"
echo "$(netstat -tuln)"
echo
divider
echo "System Load Average:"
echo "$(uptime | awk -F'load average:' '{ print $2 }')"
echo
divider
echo -e "${GREEN}**** Server Utilization Completed ****${NC}"
divider