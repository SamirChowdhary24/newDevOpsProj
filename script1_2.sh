#!/bin/bash
echo "Top 5 CPU consuming processes:"
ps aux --sort=-%cpu | head -6 # lists all processes with their resource usage and orts them by CPU usage in descending order.
echo -e "\nTop 5 memory consuming processes:" # picks the top 5 processes
ps aux --sort=-%mem | head -6 # sorts processes by memory usage
echo -e "\nZombie processes:"
ps aux | awk '$8=="Z" {print}' #filters processes with state Z i.e zombie
#The script helps monitor system performance by identifying high CPU/memory usage processes and checking for zombie processes.
# zombie process is a process that has completed its execution, but its entry remains in the process table
