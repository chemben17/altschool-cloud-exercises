#!/bin/bash

#This script checks through all the available files on the server before declaring it's final results, not just the working folder


#checks if a file name as added at the terminal. if yes, it proceeds to run other codes and If no, it exits with a mild warning

if [ "$#" -eq 0 ]; then
echo "please, input the <filename>. No file name inputted yet"
exit 1
fi

FILE="$1"

#searches through the whole

FOUND=$(find / -type f -name "$FILE" 2>/dev/null)

if [-n "$FOUND"]; then
echo "File '$FILE' exits at:"
echo "$FOUND"
else
echo "File '$FILE' does not exit"
fi
