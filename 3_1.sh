#!/bin/bash

for file in /{,usr/}bin/*calc
# Find all the exe file  ending in "calc" in /bin and in /usr/bin  directories
do 
    if [ -x "$file" ] #Check weather the file is present or not
    then
    echo $file # Print if the file is present
    fi
done 
#output:
# the output will be something like this
#/bin/xcalc
#/usr/bin/xcalc

echo $PATH #Here : is used as a seperator 

# :(){
#     echo "The function name is "$FUNCNAME" "
# }

 
# The function name is :

#Demo of : as a place holder 

not_empty ()
{
    : #Here the colon is a place holder.
} # Contains a : (null command), and so is not empty.

not_empty # While running this function it wont create an errors 