#!/bin/bash

# SMTP Configuration
SMTP_SERVER="in.mailjet.com"
SMTP_PORT="587"
USERNAME="d057ae729def1cc326"
PASSWORD="0a678a9fb8f7421d89"

# Email Details
FROM="no-reply@mybusybee.net"
TO="sherwin@beesuite.org"
SUBJECT="SMTP Test from Bash"
BODY="Hello, this is a test email sent via Bash script using SMTP."

# Send the email
sendemail -f "$FROM" \
          -t "$TO" \
          -u "$SUBJECT" \
          -m "$BODY" \
          -s "$SMTP_SERVER:$SMTP_PORT" \
          -xu "$USERNAME" \
          -xp "$PASSWORD" \
          -o tls=yes