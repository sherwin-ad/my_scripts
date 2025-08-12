#!/bin/bash

# Colors in Bash
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color


if [ $UID -ne 0 ]
then
  echo "Error: Run as root user ....." 
  exit 1
fi

# Packages to install
PACKAGES=(figlet sl net-tools)

# Install package list
for package in "${PACKAGES[@]}"
do
    echo
    echo -e "${RED} Installing $package...${NC}"
    apt install $package -y &>/dev/null
    echo
    echo -e "${GREEN} $package installed successfully.${NC}"
    echo
done


