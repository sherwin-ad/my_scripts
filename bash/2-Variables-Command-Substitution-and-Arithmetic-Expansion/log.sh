#!/bin/bash
# Listing all files and folders in /usr/bin directory
# Exporting this list to a log file

today=$(date +%Y-%m-%d)
ls -al /usr/bin > log.${today}.txt