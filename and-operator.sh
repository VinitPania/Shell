#! /usr/bin/bash

#This file is use to demonstrate the use of AND operator

echo "Enter the age "
read age

# if [ "$age" -gt 18 ] && [ "$age" -lt 30 ]; then -> type 1 Can also use thid way 
# if [ "$age" -gt 18 -a "$age" -lt 30 ]; then -> type 2
if [[ "$age" -gt 18 && "$age" -lt 30 ]]; then 
    echo "You are eligible for Cycling "
else
    echo "You are not eligible for cycling"
fi
