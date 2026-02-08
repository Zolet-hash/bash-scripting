#!/bin/bash

echo "====== System Information ======"
echo "Hostname: $(hostname)"
echo "Operating System: $(lsb_release -d | cut -f2)"
echo "Kernel Version: $(uname -r)"
echo "CPU: $(grep 'model name' /proc/cpuinfo | head -1 | cut -d':' -f2 | sed 's/^[ \t]*//')"
echo "Memory: $(free -h | grep 'Mem' | awk '{print $2}')"
echo "Disk Usage: $(df -h --output=pcent / | tail -1)"
echo "Uptime: $(uptime -p)"
echo "==============================="
