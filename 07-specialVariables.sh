#!/bin/bash

echo "Print all the arguments passed in the script: $@"
echo "Print number of arguments passed in the script: $#"
echo "Print in single string all the arguments passed in the script: $*"
echo "Print the name of the script: $0"
echo "Print the first argument passed: $1"
echo "Print full path of the script: $(realpath $0)"
echo "Who is running the script: $USER"
echo "Directory of current script: $PWD"
echo "Home Directory of the user running the Script: $HOME"
echo "PID of the running script: $$"
sleep 10 &
sleep 4 &
echo "PID of command running in background: $!"
wait $!
echo "Line Number of the script: $LINENO"
echo "Status of previous command: $?"
echo "Total seconds runned theis script: $SECONDS"
