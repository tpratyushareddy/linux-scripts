#!/bin/bash
# Author: Pratyusha

set -ex

# Variables
LOCUST_FILE="locustfile.py"   # Path to your locustfile.py
HOST_URL="http://example.com" # Replace with your target URL
USERS=10                      # Number of simulated users
SPAWN_RATE=5                  # Users to spawn per second
RUN_TIME="1m"                 # Duration of the test

# Function to run Locust
function run_locust() {
    echo "Starting Locust load test..."
    locust -f "$LOCUST_FILE" --host "$HOST_URL" --users "$USERS" --spawn-rate "$SPAWN_RATE" --run-time "$RUN_TIME" --headless
    echo "Locust load test completed."
}

# Run the Locust test
run_locust

