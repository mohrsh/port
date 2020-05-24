#!/bin/bash
read -p 'New folder name : ' newFolder
mkdir "$newFolder"
read -s -p "Password : " password 
cd "$newFolder"
echo "$password" | sha256sum > secret.txt
exit 0

