#!/bin/bash

# Function to display system statistics
function show_stats() {
    # Clear the screen for fresh output
    clear
    
    # CPU Usage
    echo "CPU Usage: $(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1 "%"}')"
    
    # Memory Usage
    echo "Memory Usage: $(free | grep Mem | awk '{print $3/$2 * 100.0 "%"}')"
    
    # Disk Usage
    echo "Disk Usage: $(df -h | grep '/$' | awk '{print $5}')"
   
}

# Prompt user to specify how many times to display stats
echo "How many times would you like to display the stats?"
read num

# Loop to show stats the user-defined number of times
for (( i=1; i<=num; i++ ))
do
    show_stats
    echo "Displaying stats $i of $num
 times."
    sleep 2
done

echo "Finished displaying stats."
