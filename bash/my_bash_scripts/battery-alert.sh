#!/bin/bash

# Set the threshold
LOW=30
FULL=90

# Set the check interval in seconds
INTERVAL=3600  # check every 60 seconds

while true; do
    # Get battery info
    battery_info=$(upower -i $(upower -e | grep 'BAT'))
    battery_level=$(echo "$battery_info" | grep -E "percentage" | awk '{print $2}' | tr -d '%')

    # Check if battery is at or below threshold
    if [ "$battery_level" -le "$LOW" ]; then
        echo "Battery is at ${battery_level}%!" | mail -s "Battery Low Alert" sherwin@mybusybee.net
    elif [ "$battery_level" -eq "$FULL" ]; then
        echo "Battery is fully charged at ${battery_level}%!" | mail -s "Battery Full Alert" sherwin@mybusybee.net
    fi

    # Wait before checking again
    sleep "$INTERVAL"
done
