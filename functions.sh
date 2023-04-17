#!/bin/bash

function print (){     #this is a function and we can use it again and again to run it in a eequece 
    echo $1 $2            #we can have multiple args and we have to sent  thar args while calling the function 
}  

world () {
    echo "world"
}

quit () {
    echo "Exiting the code"
    exit
}

print Eblo  #This is how we cal an function and i have given a Arguments 
print Hellow World #We can send the multiple attributres 
world
quit