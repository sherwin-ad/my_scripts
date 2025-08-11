#!/bin/bash
# This script demonstrates the use of arrays in Bash
numbers=(1 2 3 4 5)
echo "The first number is: ${numbers[0]}"
echo "The second number is: ${numbers[1]}"
echo "All numbers: ${numbers[@]}"
echo "All numbers with indices: ${!numbers[@]}"

# Add more numbers to the array
numbers+=(10 20 30 40 50)
echo "After adding more numbers: ${numbers[@]}"

# Remove the third number (index 2)
unset numbers[2]
echo "After removing the third number: ${numbers[@]}"

# Replace the fifth number (index 4) with a new value
numbers[4]=7
echo "After replacing the fifth number: ${numbers[@]}"


names=("Alice" "Bob" "Charlie")
echo "Names in the array: ${names[@]}"
echo "Number of names: ${#names[@]}"
echo "All names with indices: ${!names[@]}"

# Add more names to the array
names+=("David" "Eve") # Adding more names
echo "After adding more names: ${names[@]}" # Display all names
unset names[1] # Remove the second name (index 1)
echo "After removing the second name: ${names[@]}" # Display all names after removal

names[3]="Frank" # Replace the fourth name (index 3) with a new value
echo "After replacing the fourth name: ${names[@]}" # Display all names after replacement