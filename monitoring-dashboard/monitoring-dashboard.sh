#!/bin/bash
# Author: Pratyusha

set -e

# Function to display system statistics
function show_stats() {
    # Clear the screen for fresh output
    clear

    # CPU Usage
    echo "CPU Usage: $(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1 "%"}')"

    echo ""
    # Memory Usage
    echo "Memory Usage: $(free | grep Mem | awk '{print $3/$2 * 100.0 "%"}')"

    echo ""
    # Disk Usage
    echo "Disk Usage: $(df -h | grep '/$' | awk '{print $5}')"

    echo ""
    # Top Processes by CPU and Memory usage
    echo "Top Process by CPU Usage:"
    echo "$(ps -eo pid,comm,%cpu --sort=-%cpu | head -n 4)"  # Top process by CPU (excluding the header)
    
    echo ""
    echo "Top Process by Memory Usage:"
    echo "$(ps -eo pid,comm,%mem --sort=-%mem | head -n 4)"  # Top process by Memory (excluding the header)

    echo ""
    echo "List of Other Processes (top 5):"
    echo "$(ps -eo pid,comm,%mem,%cpu --sort=%cpu | head -n 6)"  # List of top processes sorted by CPU usage
}

# Check if command-line argument is provided
if [ $# -gt 0 ]; then
    # If the user provides an argument, use that as the number of times
    num=$1
else
    # Default value if no argument is provided
    echo "How many times would like to display the stats"
    read num
fi

# Loop to show stats the user-defined number of times
for (( i=1; i<=num; i++ ))
do
    show_stats
    echo "Displaying stats $i of $num times."
    sleep 2
done

echo "Finished displaying stats."

