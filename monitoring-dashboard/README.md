# System Statistics Monitoring Script

This shell script provides a way to monitor system statistics interactively. It displays CPU usage, memory usage, disk usage, and the top resource-consuming processes. The user can specify how many times to display the statistics, and the script will loop accordingly.

## Features

- **CPU Usage**: Displays real-time CPU utilization as a percentage.
- **Memory Usage**: Shows memory usage as a percentage of total memory.
- **Disk Usage**: Reports the usage of the root partition.
- **Top Processes**: Lists the top five processes consuming the most CPU.

## Requirements

- **Linux**: Compatible with most Linux distributions.
- **Bash**: Script is written in bash and requires a bash shell.

## Usage

1. **Make the script executable**:
   ```bash
   chmod +x monitor.sh

## Customization

1. Interval: The statistics refresh every 2 seconds. You can adjust this by modifying the sleep 2 line in the script.
2. Number of processes: The script lists the top 5 processes by default. Change the head -n 6 command in the show_stats function to display more or fewer processes.

##Troubleshooting

1. If the script fails to run:
2. Ensure bash is installed and accessible.
3. Verify the script has execute permissions (chmod +x).
4. Run the script using bash ./monitor.sh if the default shell isn't bash
