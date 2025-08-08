#!/bin/bash

read -p "Enter the name of the guest: " guest

if [ "$guest" == "Sherwin" ]; then
  echo "Welcome, $guest!"
  echo "Enjoy your stay."
elif [ "$guest" == "Analette" ]; then
  echo "Welcome, $guest!"
  echo "Please proceed to the lounge."
elif [ "$guest" == "Reine" ]; then
  echo "Welcome, $guest!"
  echo "Please sign in."
else    
  echo "Guest not recognized."
  echo "Please check the guest list."         
fi 