#!/bin/bash

# Apache Hardening Script for Ubuntu

# Check if the script is run as root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Back up the original Apache configuration file
cp /etc/apache2/apache2.conf /etc/apache2/apache2.conf.bak

# Hide Apache version and OS info
echo "ServerTokens Prod" >> /etc/apache2/conf-available/security.conf
echo "ServerSignature Off" >> /etc/apache2/conf-available/security.conf

# Restart the Apache service to apply changes
echo "Restarting Apache service..."
systemctl restart apache2

echo "Apache hardening complete. Configuration file backed up to apache2.conf.bak"