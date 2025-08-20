#!/bin/bash

while getopts a:b:c: OPTION; do
  case $OPTION in
    a) echo "You're welcome $OPTARG." ;;
    b) echo "Hi there, how are you $OPTARG." ;;
    c) echo "Hello $OPTARG, good to see you after a long time." ;;
    *) echo "Not a valid option" ;;
  esac
done