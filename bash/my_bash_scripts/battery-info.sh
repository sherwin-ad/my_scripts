#!/bin/bash

# Get battery info using upower
battery_info=$(upower -i $(upower -e | grep 'BAT'))

# Extract battery percentage
battery_level=$(echo "$battery_info" | grep -E "percentage" | awk '{print $2}' | tr -d '%')
echo "Battery Level: ${battery_level}%"

# Check if battery is at or below 30%
if [ "$battery_level" -le 90 ]; then
    echo "Battery is at ${battery_level}%!" | mail -s "Battery Alert" sherwin@mybusybee.net
fi
