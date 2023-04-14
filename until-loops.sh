#! /usr/bin/bash

# it Checks if the condition is False then it enters into the statments 
p=10
until [ $p -lt -1 ]; do #if the p variable  is greater than 10 enter in the loop else exit 
    echo "print 1 $p"
    p=$(( p-1 ))
    echo "print 2 $p"
done