#!/bin/bash
# Author: Pratyusha 

set -e

# Introducation message
echo "Time to generate some passwords"
sleep 1

<<Block_comment
# Prompting the user for password length and validate the input 
while true; do
    echo "Enter the length of the password:"
    read pass_leng
    if [[ "$pass_leng" =~ ^[0-9]+$ ]] && [ "$pass_leng" -gt 0 ]; then
        break
    else
        echo "Your input is invalid"
        exit 1
        #echo "Please enter valid input"
    fi
done

# Prompting the user for the number of passwords and validate the input
while true; do
    echo "Enter how many times you want to generate the password:"
    read pass_num
    if [[ "$pass_num" =~ ^[0-9]+$ ]] && [ "$pass_num" -gt 0 ]; then
        break
    else
        echo "Your input is invalid"
        exit 1
        #echo "Please enter valid input"
    fi
done
Block_comment

if [[ $# -ne 2 ]]; then
     echo "Program requires 2 areguments. Either Missing or not specified" 
     # Prompting the user for password length and validate the input
     while true; do
         echo "Enter the length of the password:"
         read pass_leng
         if [[ "$pass_leng" =~ ^[0-9]+$ ]] && [ "$pass_leng" -gt 0 ]; then
             break
         else
             echo "Your input is invalid"
             exit 1
             #echo "Please enter valid input"
         fi
     done
     # Prompting the user for the number of passwords and validate the input
     while true; do
         echo "Enter how many times you want to generate the password:"
         read pass_num
         if [[ "$pass_num" =~ ^[0-9]+$ ]] && [ "$pass_num" -gt 0 ]; then
             break
         else
             echo "Your input is invalid"
             exit 1
             #echo "Please enter valid input"
         fi
      done
else
    pass_leng=$1
    pass_num=$2
fi

# Loop to generate the passwords
for p in $(seq 1 $pass_num); do
    openssl rand -base64 48 | cut -c1-$pass_leng
done

