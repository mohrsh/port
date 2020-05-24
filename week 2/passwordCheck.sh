#!/bin/bash
#Ask the user to type a secret password (hide that input)
read -s -p "Password : " passwordEntry
#Check the user’s password against the hash stored in 'secret.txt'
cd new
echo "$passwordEntry" | sha256sum > hashedPassword.txt 
if [ "$(cat hashedPassword.txt)" = "$(cat secret.txt)" ]; then
# If the user’s password is correct, print “Access Granted” and quit with the exit code 0
    echo "Access Granted"
    rm hashedPassword.txt
    exit 0
else
# if the user’s password is incorrect print “Access Denied” and quit with the exit code 1
    echo "Access Denied"
    rm hashedPassword.txt
    exit 1
fi