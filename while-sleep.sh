#! /usr/bin/bash

n=1

while [ $n -le 3 ]; do
    echo "$n is the value "
    echo "Sleeping in  for 1 sec "
    sleep 1 #---> for  sleep the cmd 
    #gnome-terminal & --> cmd for creating terminal 
    
    echo "Incrementing value"
    ((n++))
    echo "The value is $n"

done