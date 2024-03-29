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
if [ -n "$xyz" ]  #More pedantically correct.
    then 
        echo "Uninitialized vaiable is true"
    else    
        echo  "Unitialized variable is false"
fi          # Uninitialized variable is false 

echo 

xyz=
echo  "Testing \"-n \$xyz\""
if [ -n "$xyz" ]
    then 
        echo "Null Variable is true"
    else
        echo "Null variable is false"
fi 

echo 
# When os "False" true?

echo "Testing \"false\""
if [ "false" ] # It seems that "False" is just a string 
    then 
        echo "\"false\"is true." # and it test true 
    else 
        echo "\"false\" is false "
fi      "False is true "

echo 

echo "Testing \"\$false\""  #Again , unitialized variable,
if [ "$false" ]
    then 
        echo "\"$false \" is true "
    else 
        echo "\"$false \" is false "
fi          # "$false" is fasle .  Now we get the expected result 

#What will happen if we tested the uninitialized variable "$true"?

echo 

# Equivalence of test , /usr/bin/test/[],and /usr/bin[

echo

if test -z "$1"
    then 
        echo "No command-line argument"
    else 
        echo "First command-line argument is $1"
fi 

echo 

if /usr/bin/test -z "$1"     #Equivalant to "test" builtin
    then 
        echo "No Command-line is $1"
    else    
        echo "First commnand line is $1"
fi 

if [ -z "$1"]   # Functionally identical to above the code block.
# if [ -z "$1"                 Should work but Bash respond to a missing close bracket with error message.
    then 
        echo "No commnand-line arguments ."
    else
        echo "First command-line argument is $1."
fi 

if /usr/bin/[ -z"$1"]   #Again functioally identical to above.
# if /usr/bin/[ -z "$1" Works but gives an error message , This message is fixed in Bash version 3.x
    then 
        echo "No command-line arguments"
        else 
           echo  "First  command-line argument is $1" 
fi 

echo 

# Example of [[ ]] 

file=/etc/paswd
if [[ -e $file ]]
    then    
        echo "Password file exist"
fi 

#Example of Octal and hexadecimal evaluation.

decimal=15 
hexadecimal=0x0f
octal=017

if [ "$decimal" -eq "$octal" ]
    then 
        echo "$decimal Equal $octal"
    else 
        echo "$decimal NotEqual $octal" #15 Not equal 017
fi                  #Dosent evulate within [ Single Bracket ] !

if [[ "$decimal" -eq  "$octal" ]]
    then 
        echo "$decimal Equal $octal" #15 is Equal to 017
    else
        echo "$decimal NotEqual $octal"
fi                      #Evaluates if using [[ double bracckets  ]] 

if [[ "$decimal" -eq "$hexadecimal" ]]
    then 
        echo "$decimal Equal $hexadecimal" #15 Equal 017
    else 
        echo "$decimal NotEqual $hexadecimal"
fi                      #this also evaluate while use [[ Doube Brackets ]] 

# Following an if, nither the test command nor the test brackets ([] or [[]]) are strictly necessary 
dir=/home/bozo

if cd "$dir" 2>/dev/null; then #"2>/dev/null" hides error messages 
    echo "Now in $dir"
else 
    echo "Cant change to $dir"
fi 
# The "if COMMAND" gives the exit status of COMMAND

#Similaraly, a condition within test brackets my stand alone without if , when used in combination with list construct


var1=20
var2=22
[ "$var1" -ne "$var2"  ] && echo "$var1 is not equal to $var2"

home=/home/bozo
[ -d "$home" ] || echo "$home directory does not exist"

#Arithmetic testing using (( ))
#Arithmetic test
    # The ((...)) construct evluates and tests numertical   expression 

(( 0 )) 
echo "Exit status of \"(( 0  ))\" is $?."  # 1

(( 1 ))
echo "Exit status of \"(( 1 ))\" is $?"  # 0 

(( 5 > 4 ))                                  #true 
echo "Exit status of \"(( 5 > 4 ))\" is $?"  # 0

(( 5 > 9 ))                                     # false
echo "Exit status of \"(( 5 > 9 ))\" is $?"      # 1

(( 5 == 5  ))                                       # true 
echo "Exit status of \"((  5 == 5  ))\" is $?"      # 0 
# (( 5 = 5 )) gives an error message . 

(( 5 - 5 ))                                     # 0 
echo "Exit status of \" (( 5 - 5 ))\" is $?"    # 1 

(( 5 / 4  ))                                     # Division o.k
echo "Exit status of \" ((  5 \ 4 ))\" $?"       # 0 

(( 1 / 2 ))                                      # Division result < 1
echo "Exit status of \"(( 1 \ 2 ))\" $? "           # Rounded off to zero 

(( 1 / 0 )) 2>/dev/null                         # illigial division by 0.
echo "Exit status of \" (( 1 \  0 ))\" $? "     #1 

#What effect does 2>/dev/null have ;What would happen if it were removed 
# (( ... )) Also helps in IF then ELSE  case 

val1=5
val2=4

if (( $val1 > $val2 ))
    then 
        echo "$var1 is greater than $val2"
    
    else 
        echo "$val2 is greater then $val1"
fi 

