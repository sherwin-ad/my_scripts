#!/bin/bash
# Monitor system performance and log CPU, memory, and disk usage
# Log key information  to a log file

echo "Starting performance analysis..." >> performance.log

echo "Memory usage:" >> performance.log
free -h | grep "Mem" >> performance.log

echo "Swap usage:" >> performance.log
free -h | grep "Swap" >> performance.log

echo "Disk usage:" >> performance.log
df -h >> performance.log >> performance.log

echo "CPU usage:" >> performance.log 
top -b -n1 | grep "Cpu(s)" >> performance.log

