#! /usr/bin/bash

#printing the number using while loop
n=1
while [ $n -le 10 ] # if the n variable is less than 10 enter in the loop else exit 
do
    echo "The number  is $n"
    n=$(($n+1))
    echo "The number after adding 1  is $n"
    ((n++))
   echo "The number after adding  is $n" 
done 