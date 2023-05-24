#!/bin/bash

List="one two three"

for a in $List # Splits the variable in parts at whitespace.
do 
    echo "$a"
done 
#one
#two 
#three

echo "----"

for a in "$List" # Preserve whitespaces in an single variable.
do #     ^     ^
    echo "$a"
done 
# one two three


#  A more elobrate example 
variable1="a variable containing five words "

COMMAND This is $variable1 # Executes COMMAND with 7 arguments:
#"This" "is" "a" "variable" "containing" "five" "words"


COMMAND "This is $variable1" # Executes COMMAND  with 1 arguments :
#"This is a variable containing five words"

variable2=""  #Empty

COMMAND $variable2 $variable2 $variable2
    #Execute COMMAND  with no arguments.

COMMAND "$variable2" "$variable2" "$variable2"
#   COMMAND executes with 3 empty arguments.

COMMAND "$variable2 $variable2 $variable2"
# COMMAND executes with 1  arguments (2 spaces).


#echoing Weird Variables

echo 
var="'(]\\{}\$\""
echo $var   # '(]\{}$"
echo "$var" # '(]\{}$" Dosent make any difference 

IFS='\'
echo $var       #'(] {}$"     \ converted to space. Why?
echo "$var"     #'(]\{}$"

echo 
var2="\\\\\""
echo $var2  #   "
echo "$var2"  # \\"
echo 

# But ......... var2="\\\\\"" is illegal Why?
var3='\\\\'
echo "$var3"  # \\\\
# Strong Quoting works , though.

#************************************************************####
#As the first example above shows, nesting quotes is permitted.
echo "$(echo '"')"     # "

# At times this comes useful.

var1="Two bits"
echo "\$var1 = "$var1""           #$var1  = Two bits

if [[ "$(du  "$My_File1")" -gt "$(du "$My_File2")"   ]]
then 
     echo "Ok boi"
fi



