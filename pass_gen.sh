#!/binbash
# Author: Pratyusha
# Introduction message
echo "Time to generate some passwords"
sleep 1

# Prompt the user for password length
echo "Enter the length of the password:"
read pass_leng

# Prompt the user for the number of passwords
echo "Enter how many times you want to generate the password:"
read pass_num

# Loop to generate the passwords
for p in $(seq 1 $pass_num); do
    # Generate random base64 string and trim it to the desired length
    openssl rand -base64 48 | cut -c1-$pass_leng
done 
