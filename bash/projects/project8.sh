#!/bin/bash

# This script will give you the information of a file.

if [ $# -eq 0 ]; then
    echo "Usage: $0 [File]"
    exit
fi

OWNER=`ls -l $1 | awk '{print $3}'`
SIZE=`ls -l $1 | awk '{print $5}'`
CREATED=`ls -l $1 | awk '{print $7 " " $6}'`
TIME=`ls -l $1 | awk '{print $8}'`


echo "Owner: $OWNER"
echo "Size: $SIZE bytes"
echo "This file was created on: $CREATED at $TIME"
echo "File tyoe: `file $1`"
echo
echo "File permissions: `ls -l $1 | awk '{print $1}'`"

if [ -r $1 ]
then
    echo "READABLE=TRUE"
else
    echo "READABLE=FALSE"
fi