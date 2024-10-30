#!/bin/zsh

echo "========== Server Performance Stats =========="

echo "--------------------"
echo "\nDate and Time: $(date)"

echo "--------------------"
echo "\nTotal CPU Usage:"
top -l 1 | grep "CPU usage"

echo "--------------------"
echo "\nTotal Memory Usage:"
vm_stat | awk '/free/ || /active/'

echo "--------------------"
echo "\nTotal Disk Usage:"
df -h | grep "/System/Volumes/Data"

echo "--------------------"
echo "\nTotal 5 processes by CPU Usage:"
ps aux | sort -rk 3,3 | head -n 6

echo "--------------------"
echo "\nTotal 5 processes by Memory Usage:"
ps aux | sort -rk 4,4 | head -n 6

echo "-------------------"
echo "\nOS Version:"
sw_vers

echo "--------------------"
echo "\nUptime:"
uptime

echo "--------------------"
echo "\nLogged-in Users:"
who

