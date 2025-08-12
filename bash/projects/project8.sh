#!/bin/bash

# This script will give you the information of a file.

if [ $# -eq 0 ]; then
    echo "Usage: $0 [File]"
    exit 1
fi

OWNER=`ls -l $1 | awk '{print $3}'`
SIZE=`ls -l $1 | awk '{print $5}'`
CREATED=`ls -l $1 | awk '{print $7 " " $6}'`
TIME=`ls -l $1 | awk '{print $8}'`

echo "Filename: $1"
echo
echo "Owner: $OWNER"
echo "Size: $SIZE bytes"
echo "This file was created on: $CREATED at $TIME"
echo "File type: `file $1`"
echo
echo "File permissions: `ls -l $1 | awk '{print $1}'`"

# Check if the file is readable
if [ -r $1 ]
then
    echo "READABLE=TRUE"
else
    echo "READABLE=FALSE"
fi

# Check if the file is writable
if [ -w $1 ]
then
    echo "WRITABLE=TRUE"
else
    echo "WRITABLE=FALSE"
fi  

# Check if the file is executable
if [ -x $1 ]
then
    echo "EXECUTABLE=TRUE"
else
    echo "EXECUTABLE=FALSE"
fi

# Check read permissions for owner, group, and others
PERMS=$(ls -l "$1" | awk '{print $1}')

if [[ ${PERMS:1:1} == "r" ]]; then
    echo "OWNER_READABLE=TRUE"
else
    echo "OWNER_READABLE=FALSE"
fi

if [[ ${PERMS:4:1} == "r" ]]; then
    echo "GROUP_READABLE=TRUE"        
else
    echo "GROUP_READABLE=FALSE"
fi

if [[ ${PERMS:7:1} == "r" ]]; then
    echo "OTHER_READABLE=TRUE"
else
    echo "OTHER_READABLE=FALSE"
fi

# Check write permissions for owner, group, and others
if [[ ${PERMS:2:1} == "w" ]]; then
    echo "OWNER_WRITABLE=TRUE"
else
    echo "OWNER_WRITABLE=FALSE"
fi

if [[ ${PERMS:5:1} == "w" ]]; then
    echo "GROUP_WRITABLE=TRUE"
else
    echo "GROUP_WRITABLE=FALSE"
fi
if [[ ${PERMS:8:1} == "w" ]]; then
    echo "OTHER_WRITABLE=TRUE"
else
    echo "OTHER_WRITABLE=FALSE"
fi

# Check execute permissions for owner, group, and others
if [[ ${PERMS:3:1} == "x" ]]; then
    echo "OWNER_EXECUTABLE=TRUE"
else
    echo "OWNER_EXECUTABLE=FALSE"
fi

if [[ ${PERMS:6:1} == "x" ]]; then
    echo "GROUP_EXECUTABLE=TRUE"
else
    echo "GROUP_EXECUTABLE=FALSE"
fi

if [[ ${PERMS:9:1} == "x" ]]; then
    echo "OTHER_EXECUTABLE=TRUE"
else
    echo "OTHER_EXECUTABLE=FALSE"
fi