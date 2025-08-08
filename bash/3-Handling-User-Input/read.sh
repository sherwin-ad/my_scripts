#!/bin/bash
# Using read command to handle user input

read -p "Enter your name: " name
echo "Hello $name!"

# Using read with multiple variables
read -p "Enter your first and last name: " first_name last_name
echo "Your first name is: $first_name"
echo "Your last name is: $last_name"
echo "Your full name is: $first_name $last_name"