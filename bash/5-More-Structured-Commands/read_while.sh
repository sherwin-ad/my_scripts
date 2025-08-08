#!/bin/bash
# This script reads the last 5 lines of /etc/passwd and processes each line
tail -n 5 /etc/passwd | while read LREAD
do
    echo "Last 5 lines of /etc/passwd: $LREAD"
done

# Another example that reads the first 5 lines of /etc/passwd
while read LREAD1
do
    echo "First 5 lines of /etc/passwd: $LREAD1"
done < /etc/passwd | head -n 5


filename=/etc/passwd
while read LREAD2
do
    echo "Last 10 line of $LREAD2"
done < $filename | tail -n 10    


# This example reads the output of `ls $HOME` and processes each line
while read LREAD3
do
    echo $LREAD3
done <  <(ls $HOME)