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

: ${username=`whoami`}
echo $username