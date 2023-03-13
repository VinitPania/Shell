#! /usr/bin/bash

#printing the number using while loop
n=1
while [ $n -le 10 ] # give the space you idiot 
do
    echo "The number  is $n"
    n=$(($n+1))
    echo "The number after adding 1  is $n"
    ((n++))
   echo "The number after adding  is $n" 
done 