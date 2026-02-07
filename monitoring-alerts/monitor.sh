#!/bin/bash

CPU_THRESHOLD=80
MEM_THRESHOLD=80
DISK_THRESHOLD=80

CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')
MEM=$(free | awk '/Mem/ {printf("%.0f"), $3/$2 * 100}')
DISK=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

echo "CPU Usage: $CPU%"
echo "Memory Usage: $MEM%"
echo "Disk Usage: $DISK%"

if (( CPU > CPU_THRESHOLD )); then
  echo "ALERT: High CPU Usage!"
fi

if (( MEM > MEM_THRESHOLD )); then
  echo "ALERT: High Memory Usage!"
fi

if (( DISK > DISK_THRESHOLD )); then
  echo "ALERT: High Disk Usage!"
fi

