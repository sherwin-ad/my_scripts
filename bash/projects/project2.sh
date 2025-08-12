#!/bin/bash
# Password generator
read -p "Enter the length of the password: " $1    

PASS=`date | sha256sum | cut -b 1-$1`
echo "Generated password: $PASS"
# Usage: ./project2.sh 16