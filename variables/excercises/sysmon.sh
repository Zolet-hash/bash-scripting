#!bin/bash

# variables for thresholds
cpu_threshold=80
disk_threshold=90
mem_threshold=85

#Get sys info
cpu_usage=$(top -bn1 | grep "cpu(s)" | awk '{print $2 + $4}')
