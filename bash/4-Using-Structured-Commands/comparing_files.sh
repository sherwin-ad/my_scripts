#!/bin/bash

# Check if a file exists using test command
# -e (exists)       
filename="comparing_strings.sh"
directory="my_directory"

if [ -e "$filename" ]; then
  echo "$filename exists."
else
    echo "$filename does not exist."
fi

# regular file
if [ -f "$filename" ]; then
  echo "$filename is a regular file."
else
  echo "$filename is not a regular file."
fi

# directory
if [ -d "$directory" ]; then
  echo "$directory is a directory."
else
  echo "$directory is not a directory."
fi

# readable
if [ -r "$filename" ]; then
  echo "$filename is readable."
else
  echo "$filename is not readable."
fi

# writable
if [ -w "$filename" ]; then
  echo "$filename is writable."
else
  echo "$filename is not writable."
fi

# size
if [ -s "$filename" ]; then
  echo "$filename is not empty."
else
    echo "$filename is empty."
fi
# executable
if [ -x "$filename" ]; then
  echo "$filename is executable."
else
  echo "$filename is not executable."
fi
