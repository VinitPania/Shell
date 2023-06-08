#!/bin/bash

(( 0 && 1 )) #Logical AND
echo $?  # 1


let "num = (( 0 && 1 ))"
echo $num # 0
echo $? # 1

(( 200 || 10 )) #Logical OR
echo $? # 0 
let "num = (( 100 || 10 ))"
echo $num # 1
echo $? # 0 

(( 200 | 11 )) #Bitwise OR
echo $? # 0
let "num = (( 200 | 11 ))"
echo $num # 203
echo $?   # 0
# The "let" construct retuns the same exit status as a double parenthesis arithmetic expression

var = -2 && (( var+=2 ))
echo $? # 1
var=-2  && (( var+=2 )) && echo $var
# Will not echo $var!



# An If can test any command not just conditions enclosed within the brackets 

if cmd a b &> /dev/null # Suppress output 
then echo "Files a and b are identical."
else echo "Files a n b differ" 
fi 
## the very useful "if-grep" construct":
if grep -q Bash file 
    then echo "File contains at least one occurence of Bash."
fi 

word=Linux 
letter_sequence=inu
if echo "$word" | grep -q "letter_sequence"
# The "-q" option to grep suppress output.
then 
    echo "$letter_sequence found in $word"
else 
    echo "$letter_sequence not found in $word"
fi 

if COMMAND_WHOSE_EXIT_STATUS_IS_0_UNLESS_ERROR_OCCUREN
    then 
        echo "Command Succeeded"
    else
        echo "Command Failed"
fi 

# What is truth Example

echo 


echo "Testing \"0\" "
if [ 0 ]  #zero
then   
    echo "0 is true."
else           # Or Else .....
    echo "0 is false."
fi      # 0 is true 

echo 

echo "Testing\"1\""
if [ 1 ]   #one 
    then 
        echo "1 is true"
    else 
        echo "1 is false"
fi          # 1 is true 

echo

echo "Testing \"NULL\""
if [ ]
    then 
        echo "NULL is true "
    else 
        echo "NULL is false "
fi          #NUll is false 


echo 

echo "Testing \"xyz\""
if [ xyz  ]
    then 
        echo "Random string is true "
    else
        echo "Random string is false"
fi          # Random string is true 

echo 

echo "Testing \"\$xyz\""
if [ $xyz ]     # Test if $xyz is null , but .... it's only uninitialized variable .
    then 
        echo "Uninitialized variable is true "
    else 
        echo "Unintialized variable is false . "
fi          # Uninitialized variable is false 

echo 

echo "Testing \" -n \$xyz\""
if [ -n "$xyz" ]  #More pedantically correct
