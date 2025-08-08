#!/bin/bash
# This script demonstrates how to handle user input using the `select` command in bash.

PS3="Please select your preferred day of the week: "
select day in Monday Tuesday Wednesday Thursday Friday Saturday Sunday
do
echo "Your preferred day is $day"
break
done 