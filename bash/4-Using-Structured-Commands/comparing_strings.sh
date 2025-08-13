#!/bin/bash
# Comparing strings using test command

str1="hello"
str2="hello"
str3="world"

# Equal
if test "$str1" = "$str2"; then
  echo $?
  echo "Strings are equal"
fi


# Not equal
if test "$str1" != "$str3"; then
  echo $?
  echo "Strings are not equal"
fi

# Using [ ]
if [ "$str1" = "$str2" ]; then
  echo $?
  echo "Strings are equal"
fi
