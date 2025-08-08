#!/bin/bash
# Using read command to handle user input

read -p "Enter username: " username
read -s -t 10 -p "Enter password: " password
# -s option hides the input for password
# -t option sets a timeout of 10 seconds for password input

echo -e "\nUsername: $username" 
echo "Password: $password"
echo "You have successfully logged in."