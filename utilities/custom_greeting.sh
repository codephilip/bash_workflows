#!/bin/bash
# custom_greeting.sh
# This script displays a custom greeting message when a new terminal session is started.
# It includes the current date, system uptime, and disk usage information.

echo "Welcome, $(whoami)! Today is $(date +%A), $(date +%d %B %Y)." # Display a greeting message with the current date
echo "System Load: $(uptime -p)" # Display the system uptime
echo "Disk Usage: $(df -h / | grep / | awk '{ print $5 }')" # Display the disk usage for the root filesystem
