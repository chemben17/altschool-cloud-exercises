#!/bin/bash

#The scripts schecks if a file exits, if yes, it continues to print a success output and it not, a failure ouput

#To check if anything as been input to the terminal, if yes, the script continues to run and if 'No', an error output is given and the script is exited

if [ "$#" -eq 0 ]; then
echo "Please input your <filename. to check if it exits"
exit 1
fi

FILE="$1"
if [ -e "$1" ]; then
echo "The file '$FILE' exits"
else
echo "The file '$FILE' doesn't exit"
fi
