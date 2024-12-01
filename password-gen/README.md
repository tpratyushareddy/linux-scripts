Password Generator Script
This is a simple Bash script that generates random passwords of a specified length. The script allows the user to customize the length of each password and the number of passwords to generate.

Features
Generate multiple random passwords.
Customizable password length.
Base64 encoding ensures randomness and security.

Requirements
Bash: This script is written for a Bash environment.
OpenSSL: Required for generating random data and base64 encoding.

Ensure you have OpenSSL installed on your machine:
sudo apt install openssl   # On Debian-based systems
sudo yum install openssl   # On Red Hat-based systems
brew install openssl       # On macOS

How It Works
The script will prompt you to input the desired length of the password.
It will also ask for the number of passwords you want to generate.
The script will then generate random base64-encoded strings and cut them down to the specified length.

How to Use
Step 1: Save the Script
Save the script to a file, for example: password_generator.sh.

Step 2: Make the Script Executable
Run the following command to make the script executable:
chmod +x password_generator.sh

Step 3: Run the Script
Execute the script by typing:
./password_generator.sh

Step 4: Follow the Prompts
The script will prompt you to enter the length of the password.
Then, it will ask you how many passwords to generate.
The script will generate the requested number of passwords, each of the specified length.

Example Script Breakdown
openssl rand -base64 48: This command generates a random 48-byte value, then encodes it into a base64 string.
cut -c1-$pass_leng: This trims the generated string to the first pass_leng characters, which is the length you specify.
for p in $(seq 1 $pass_num);: The script loops to generate the requested number of passwords (pass_num).

Notes
The script uses base64 encoding to generate the random string. While base64 is a good method for generating random data, it's not purely random text (due to the encoding). 
If you need purely random characters, additional changes to the script may be required.
The length of each password is determined by your input (pass_leng). It cuts the base64 output down to your specified length.
