#!/bin/bash

echo "Server Performance Stats"

# Hien thi OS Version
echo -e "\n OS Version"
cat /etc/os-release | grep PRETTY_NAME | cut -d '"' -f 2

# grep : chi lay dong chua thong tin CPU

# Hien thi Uptime
echo -e "\n Uptime"
uptime -p

# Load avg
echo -e "\n Load Avg (1, 5, 15 min) "
uptime | awk -F'load avg:' '{ print $2}'
#awk la cong cu xly dlieu dang cot

# Total CPU usage
echo -e "\n Total CPU Usage "
cpu_idle=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print $1}')
cpu_usage=$(echo "$cpu_idle" | awk '{print 100 - $1}')
echo "CPU Usage: $cpu_usage%"

# top -bn1: chạy top 1 lần ở chế độ k tương tác
# awk, bc: xly vban + thuc hien phep tru

# Total Memory usage 
# free -m de hien thi theo Mb
echo -e "\n Total mem usage "
free -m | awk 'NR==2{printf "Total: %sMB | Used: %sMB (%.2f%%) | Free: %sMB (%.2f%%)\n", $2, $3, $3*100/$2, $4, $4*100/$2 }'

# Total Disk usage
# dung df -h 
echo -e "\n Total disk usage "
df -h | awk 'NR==2{printf "Total: %s | Used: %s (%s) | Free: %s\n", $2, $3, $5, $4}'

# Top 5 Processes by CPU Usage
echo -e "\n Top 5 Processes by CPU "
ps -eo pid,ppid,cmd,%mem --sort=-%mem | head -n 6

# ps liet ke ttrinh, -eo chon cac cot muon hien thi, PID, Command, CPU%, MEM%
# --sort theo giam dan
# head -n 6: lay 6 dong dau tien
echo -e "\n -----Done"