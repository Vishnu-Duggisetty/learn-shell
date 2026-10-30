#!/bin/bash

# Find even number

echo "Please enter the number::"
read num
remainder=$(($num % 2))

if [ $remainder -eq 0 ]; then
    echo "$num is Even Number"
else 
    echo "$num is Odd Number"
fi

echo "END"