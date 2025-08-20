#!/bin/bash

# Create logs directory if it doesn't exist
mkdir -p ./logs

# Set log file with current date
LOG_FILE="./logs/auth_audit_$(date +%F).log"

# Log header
echo "=== Authentication Audit Report: $(date) ===" > "$LOG_FILE"

# 1. Currently Logged-in Users
echo -e "\n[Logged-in Users]:" >> "$LOG_FILE"
who >> "$LOG_FILE"

# 2. Login History
echo -e "\n[Login History]:" >> "$LOG_FILE"
last -a | head -n 10 >> "$LOG_FILE"

# 3. Failed SSH Login Attempts
echo -e "\n[Failed SSH Logins]:" >> "$LOG_FILE"
grep "Failed password" /var/log/auth.log | tail -n 10 >> "$LOG_FILE"

# 4. Sudo Usage
echo -e "\n[Sudo Commands Used]:" >> "$LOG_FILE"
grep "sudo" /var/log/auth.log | tail -n 10 >> "$LOG_FILE"

# 5. Invalid User Attempts
echo -e "\n[Invalid User Attempts]:" >> "$LOG_FILE"
grep "Invalid user" /var/log/auth.log | tail -n 10 >> "$LOG_FILE"

# 6. Report Summary
echo -e "\n[Summary]:" >> "$LOG_FILE"
echo "Report saved to $LOG_FILE"