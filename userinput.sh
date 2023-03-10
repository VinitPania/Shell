#! /usr/bin/bash

#-> Taking single  input from the user 
echo "Enter Name"
read name #-> Single input 
echo  "The name is : $name "

echo "Enter Name : "
read name1 name2 name3 #-> Multiple input 
echo  "The name is : $name1 , $name2 , $name3 "

read -p 'Username : ' usr_name  #---> same line input 
read -sp 'Password : ' passwd_name #--> silent input the typing prompt cannot be seen 
echo    
echo $usr_name
echo $passwd_name

echo "Enter names "
read -a names #-> Takes input as an array 
echo  the name is ${names[0]},${names[1]},${names[2]}

echo "Enter Anything"
# This Uses the predefine variable $REPLY to take an input.          
read 
echo  This is a reply builtin variable $REPLY


