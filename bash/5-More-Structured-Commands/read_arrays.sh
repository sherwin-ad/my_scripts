#!/bin/bash

readarray days < days.txt
echo "Days of the week:"
echo "${days[@]} " # Display all days
echo "Number of days: ${#days[@]}" # Display the number of days
echo "Days with indices: ${!days[@]}" # Display days with their indices 
echo "First day: ${days[0]}" # Display the first day
echo "Last day: ${days[-1]}" # Display the last day 
echo ${days[@]@Q} # Display all days with quotes


readarray -t days1 < days.txt
echo ${days1[@]@Q} # Display all days without quotes


readarray -t files < demo_files.txt
echo "Files in the array:"
for file in "${files[@]}"; do
  echo "$file"
done

# Check if a specific file exists in the array
if [ -f "demo_files.txt" ]; then
  readarray -t demo_files < demo_files.txt
  for file in "${demo_files[@]}"; do
    echo "File: $file"
  done
else
    echo "demo_files.txt does not exist."
fi
