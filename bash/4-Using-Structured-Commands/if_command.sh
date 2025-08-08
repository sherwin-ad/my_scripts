#!/bin/bash
# Testing if then statement in bash

if pwd; then
  echo "The command succeeded."
else
  echo "The command failed."
fi

# Testing if else statement in bash
# This will check if 2 is greater than 1
if [ 2 -gt 5 ]; then
  echo "2 is greater than 1."
else
  echo "2 is not greater than 1."
fi

# Testing if then else statement in bash
test_user=sherwinowen1
if grep -q "$test_user" /etc/passwd; then
  echo "$test_user exists in /etc/passwd."
  ls /home/$test_user/*
else
  echo "$test_user does not exist in /etc/passwd."
fi

# Testing if then elif else statement in bash
a=$(cat file1.txt)
b=$(cat file2.txt)
c=$(cat file3.txt)
if [ "$a" = "$b" ] && [ "$b" = "$c" ]; then
  rm file2.txt file3.txt
else
  echo "Files are not identical."
fi

