#!/bin/bash
# the script is a global and we can access it from any where 
#Local variabe is the system it has scope inside of a function we use local keyword to define a local variable 



#For example 
function print (){
    name=$1 #the $name  is global since we havent defined  the variable as local 
    echo "$name is this in function "  
}

name="Boi"

echo "Name is  $name :Before Hellow Function"

print Moi

echo "Name is $name  :After Hellow Function "


