#!/bin/bash
# the script is a global and we can access it from any where 
#Local variabe is the system it has scope inside of a function we use local keyword to define a local variable 



#For example 
function print (){
    name=$1 #the name  is global since we havent defined  the variable as local 
    echo "$name is this in function "  
}


#Now we create another function that has local variable 

function printlocal (){

    local system=$1
    echo "I am printing local variable $system"
}


name="Boi" #This  name is also  a global variable 

echo "Name is  $name:Before Hellow Function"

print Moi #This function will override the previous name and add the Moi to Boi after 
#the echo below will print Moi since name variable is global 
echo "Name is $name :After Hellow Function "


#Declared the global variable  as system
system=ubuntu
echo "Printing global variable as ->  $system "
#calling the local variable function as mac
printlocal Macos

echo "printing the variable -> $system " #it will not print local it will print global




