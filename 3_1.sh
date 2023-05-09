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

#Example of Code Blocks and I/O Direction 
File=/home/jenkins/Desktop/Bash/Conditions-statment.txt
{
    read line1
    read line2
} < $File

echo "First line in $File iS:"
echo "$line1"
echo 
echo "Second Line in $File is:"
echo "$line2"

#Example Saving the output of a code block to a file 
SUCCESS=0
E_NOARGS=65

if [ -z "$1" ]
then 
    echo "Usage : `basename $0` rpm-file"
    exit $E_NOARGS
fi 

{ #Begin of code block 
    echo 
    echo "Archive Description"
    rpm -qpi $1   #Query Description.
    echo 
    echo "Archive Listing:"
    rpm -qpi $1 #Query listining
    echo 
    rpm -i --test $1 #Query weather rpm files can be installed 
    if [ "$?" -eq $SUCCESS  ]
    then
        echo "$1 can be installed"
    else
        echo "$1 cannot be installed"
    fi
    echo

} > $1.test

echo "Result of rpm test in file $1.test"


# Example of ASCII Comparison 
veg1=carrots
veg2=tomatoes
if [[ "$veg1" < "$veg2" ]]
then 
    echo "Although $veg1 precede $veg2 in the dictionary,"
    echo -n "this does not necessarily imply anything "
    echo "about my culinary preferences."
else
    echo "What kind of dictionary are you using, anyhow?"
fi
