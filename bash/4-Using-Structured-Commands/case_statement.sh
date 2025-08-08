#!/bin/bash

read -p "Enter the name of the guest: " guest_name

case $guest_name in
  Sherwin | Analette)   
    echo "Welcome, $guest_name!"
    echo
    ;;
  Reine | Lesyl)
    echo "Welcome, $guest_name!"
    echo "Please proceed to the main hall."
    ;;
  Shen)
    echo "Welcome, $guest_name!"
    echo "Please wait in the lounge."
    ;;
  *)
    echo "Guest not recognized."
    ;;
esac