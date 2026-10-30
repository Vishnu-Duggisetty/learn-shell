#!/bin/bash

# default data types in shell scripting are strings

var1=10
var2=20
var3="Vishnu"

echo "$var1+$var2+$var3"
echo "$(($var1+$var2+$var3))" 

declare -i Count=20 # Integer declaration
echo "Count: $Count"

Fruits=("Apple" "Banana" "Mango" "Grapes") # Array declaration
echo "Fruits: ${Fruits[@]}"
echo "First Fruits: ${Fruits[0]}"
