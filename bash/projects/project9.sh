#!/bin/bash

# This script will gather information from employees and store it into csv file.

read -p "[+]Enter your name: " NAME
read -p "[+]Enter your employee ID: " ID
read -p "[+]Enter the your department: " DEPARTMENT
read -p "[+]Enter your gender: " GENDER

INFO="$NAME,$ID,$DEPARTMENT,$GENDER"

read -p "Do you have given the correct information? (y/n): " INPUT

case $INPUT in
    n | N)
        exit 1
        ;;
    y | Y)
        # Check if the file exists, if not create it
        echo $INFO >> employee_data.csv
        ;;
    *)
    exit
        ;;
esac

echo "Your datahave been saved successfully."
