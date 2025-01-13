# Locust Load Testing Project

### Overview
This project provides a simple setup for load testing web applications using Locust. 
It includes: 1. A locustfile.py script to define user behaviors for the load test.
             2. A load-and-test.sh script to automate running the Locust load tests. 

### Prerequisites
Before running this project, ensure the following prerequisites are met:

1. Python: Install Python 3.8 or later.
2. Locust: Install Locust using pip: pip install locust
3. Bash: The load-and-test.sh script requires a Bash shell to execute.

### File Structure
The locustfile.py defines the tasks to be executed by simulated users during the load test.

Key Features: 1. Simulates users visiting the homepage (/).
              2. Users wait for 1 to 3 seconds between tasks.

The load-and-test.sh script automates running the Locust tests in headless mode.

Default Configuration: 1. Target URL: http://example.com (replace with your application's URL).
                       2. Users: 10 simulated users.
                       3. Spawn Rate: 5 users per second.
                       4. Run Time: 1 minute.

### Running the Tests
1. Prepare the Environment:
Ensure all prerequisites are installed.
Update the HOST_URL variable in load-and-test.sh with your target application's URL.

2. Execute the Bash Script:
chmod +x load-and-test.sh
./load-and-test.sh

### Customization
Adjust Test Parameters
Edit the load-and-test.sh script to change the number of users, spawn rate, or run time.

### Notes
Ensure your target server is set up to handle simulated traffic to avoid unintended disruptions.
This project is suitable for testing endpoints, performance tuning, and scalability validation.

