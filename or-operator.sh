#! /usr/bin/bash
#Demonstration of and or operator

echo "Enter the age "
read age

if [ "$age" -gt 18 ] || [ "$age" -gt  30 ]; then 
    echo "${age} is valid"
else 
    echo "${age} is not valid"
fi 

