#!/bin/bash

# Get disk usage
disk_usage=$(df / | tail -1 | awk '{print $5}' | sed 's/%//' )

if [[ $disk_usage -gt 90 ]]; then
	echo "Disk Usage: Critical"
elif [[ $disk_usage -ge 70 && $disk_usage -le 90 ]]; then
	echo "Disk Usage: Warning"
else
	echo "Disk Usage: Normal"
fi


# CPU load
cpu_load=$(top -bn 1 | awk '/%Cpu/{print $2}' | cut -d. -f1)
if (( $(echo "$cpu_load > 6" | bc -l) )); then
    echo "CPU Load: Critical"
elif (( $(echo "$cpu_load >= 3 && $cpu_load <= 6" | bc -l) )); then
    echo "CPU Load: Warning"
else
    echo "CPU Load: Normal"
fi


