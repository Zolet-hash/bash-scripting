#!/bin/bash

# variables for thresholds
cpu_threshold=80
disk_threshold=90
mem_threshold=85

#Get sys info
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
disk_usage=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')
mem_usage=$(free | grep Mem | awk '{print $3/$2 * 100}' | cut -d. -f1)

# Display information
echo "=== System Status ==="
echo "CPU usage: ${cpu_usage}%"
echo "Disk Usage: ${disk_usage}%"
echo "Memory Usage: ${mem_usage}%"

#check trhreshold and alert if needed
alerts=0

if [ $cpu_usage <  $cpu_threshold ]; then
	echo "WARNING! CPU usage is high"
	alerts=$((alerts + 1))
fi

if [ $disk_usage -gt $disk_threshold ]; then
	echo "Warning: Disk space is low"
	alerts=$((alerts + 1))
fi

if [ $mem_usage -gt $mem_threshold ]; then
	echo "Warning: Memory usage high"
	alerts=$((alerts + 1))
fi

if [ $alerts -eq 0 ]; then 
	echo "All systems normal"
fi 
