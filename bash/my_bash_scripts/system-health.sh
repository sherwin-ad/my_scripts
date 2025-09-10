#!/bin/bash

LOGFILE="/var/log/system-health-$(date +%F).log"
HOSTNAME=$(hostname)
DATE=$(date)

{
  echo "============================================"
  echo " System Health Report for $HOSTNAME"
  echo " Generated on: $DATE"
  echo "============================================"

  echo -e "\nDisk Usage:"
  df -h

  echo -e "\nCPU Load (1/5/15 min average):"
  uptime | awk -F'load average:' '{ print $2 }'

  echo -e "\nMemory Usage:"
  free -h

  echo -e "\nFailed Systemd Services:"
  systemctl --failed

  echo -e "\nTop 5 Memory-Hungry Processes:"
  ps aux --sort=-%mem | head -n 6

  echo -e "\nTop 5 CPU-Hungry Processes:"
  ps aux --sort=-%cpu | head -n 6

  echo -e "\nSystem Uptime:"
  uptime -p

  echo -e "\nAvailable Package Updates:"
  apt list --upgradable 2>/dev/null
} > "$LOGFILE"