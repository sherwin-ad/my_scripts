#!/bin/bash
# Understanding command substitution

testing=`date`
# Using the backticks to capture the output of a command
var=$(ls)
# Using the $() syntax to capture the output of a command
echo "The current date and time is: $testing"
echo "Files in the current directory:" $var