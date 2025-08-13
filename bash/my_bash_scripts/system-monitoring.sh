#!/bin/bash

# Function to get CPU usage
get_cpu_usage() {
    CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
    echo "CPU Usage: $CPU%"
}

# Function to get Memory usage
get_memory_usage() {
    MEMORY=$(free -h | awk '/^Mem/ {print "Free/Total/Percent Memory: " $4 "/" $2 "/" ($4/$2)*100"%"}')
    echo $MEMORY
}

# Function to get Disk usage
get_disk_usage() {
    DISK="$(df -h | grep -E '^/dev/' | awk '{print "Free/Total/Percent Disk: " $4 "/" $2 "/" ($4/$2)*100"%"}')"
    echo $DISK
}

# Main monitoring loop
while true; do
    clear
    echo "=== System Monitoring Report ==="
    get_cpu_usage
    get_memory_usage
    get_disk_usage
    echo "--------------------------------"
    sleep 5 # Refresh every 5 seconds
done