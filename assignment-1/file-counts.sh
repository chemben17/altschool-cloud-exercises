#!/bin/bash

#This script counts the number of files in a directory !!The Path provided must be the absolute path

#Check if an input via argument on the terminal is provided

if [ "$#" -eq 0 ]; then
echo "No directory inputted. Please input your desired directory"
exit 1
fi

dir="$1"

if [ -e "$dir" ]; then

number=$(find "$dir" -type f ! -name ".*" | wc -l)

echo "The Folder contains '$number' file(s)"
else
echo "No folder or path as '$dir'. Try again"
fi
