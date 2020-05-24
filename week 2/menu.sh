#!/bin/bash
#run ./passwordCheck.sh script
./passwordCheck.sh
#display menu if exit code is 0
if [ $? -eq 0 ]; then
    echo "1. Create a folder"
    echo "2. Copy a folder"
    echo "3. Set a password"
    read -p 'Enter selection : ' selection
    if [ "$selection" -eq 1 ]; then
    ./foldermaker.sh
    exit
    elif [ "$selection" -eq 2 ]; then
    ./folderCopier.sh
    exit
    elif [ "$selection" -eq 3 ]; then
    ./ setPassword
    exit
    else
    echo "Invalid selection, exiting....."
    exit 2
    fi
else
exit 1
fi
