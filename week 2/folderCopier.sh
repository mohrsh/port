#!/bin/bash

read -p "Type the name of the folder you would like to create a copy of : " folderName
read -p "What would you like the new folder to be called ? " newFolderName
mkdir "$newFolderName"
#then commands to copy original dir contents using cp
cp "$folderName"/* "$newFolderName"
exit 0
 
