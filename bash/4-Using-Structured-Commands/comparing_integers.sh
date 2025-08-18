#!/bin/bash

# Comparing integers using test command
# -eq (equal)
# -ne (not equal)
# -gt (greater than)
# -lt (less than)
# -ge (greater than or equal)
# -le (less than or equal)

num1=5
num2=10

# Equal
if test "$num1" -eq "$num2"; then
  echo "Numbers are equal"
fi

# Greater than
if test "$num1" -gt "$num2"; then
  echo "$num1 is greater than $num2"
fi

# Using [ ]
if [ "$num1" -lt "$num2" ]; then
  echo "$num1 is less than $num2"
fi