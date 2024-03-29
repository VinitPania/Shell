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
# SUCCESS=0
# E_NOARGS=65

# if [ -z "$1" ]
# then 
#     echo "Usage : `basename $0` rpm-file"
#     exit $E_NOARGS
# fi 

# { #Begin of code block 
#     echo 
#     echo "Archive Description"
#     rpm -qpi $1   #Query Description.
#     echo 
#     echo "Archive Listing:"
#     rpm -qpi $1 #Query listining
#     echo 
#     rpm -i --test $1 #Query weather rpm files can be installed 
#     if [ "$?" -eq $SUCCESS  ]
#     then
#         echo "$1 can be installed"
#     else
#         echo "$1 cannot be installed"
#     fi
#     echo

# } > $1.test

# echo "Result of rpm test in file $1.test"


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

# Running a loop in the loop 
for i in 1 2 3 4 5 6 7 8 9 10 #First loop.
do 
    echo -n  "$1"
done &  #Run this loop in background.
        #Will sometimes execute after second loop.

echo #This 'echo' sometimes will not display


for i in 11 12 13 14 15 16 17 18 19 20 # Second loop 
do 
    echo -n "$i"
done 

echo #This 'echo' sometimes will not display.


echo '++++++++++++++++++++++++++++++++++++++++++++++++++++++++'
echo 'It is use for backing up the file at the end of the day'
# Backup of all files 
#Backups all the file in the current directory that are modified within last 24 hours in a tar ball 
BACKUPFILE=backup-$(date +%d-%m-%Y)

archive=${1:-$BACKUPFILE}

tar cvf - `find . -mtime -1 -type f -print` > $archive.tar
gzip $archive.tar
echo "Directory $PWD backed up in archive file \"$archive.tar.gz\"."
# The above code will fail due to filename contain blank character
find . -mtime -1 -type f -print0 | xargs -0 tar rvf "archive.tar"



#Moves entire file tree from one directory to another 
(cd /source/directory && tar cf - . ) | (cd /dest/directory && tar xpvf -)
# in the above example it create an tar ball of all the files and it is  untaring in the destination folder 
tar cf - .| (cd ../dest/directory; tar xpvf -)

#Embedding Ctrl+H in a string 
echo="^H^H" #Two CTRL+H's -- backspaces
            #CTRL+V CTRL+H, using vi,vim 
echo "abcdef"    # abcdef 
echo 
echo -n "abcdef$a " #abcde f
#Space at the end         ^ Backspaces twices.
echo 
echo -n "abcdef$a"   #abcdef
                    #      ^ Dosen't backspace (Why)
echo; echo  # Result may not be quite as expected 
#######################################################
# Now , trying different method .
rubout="^H^H^H^H^H"
sleep 2
echo -n "$rubout"
sleep 2

# Carriage Return 
read -n 1 -s -p  $'Control-M leaves cursor at the beginning of the line. Press Enter . \xod' 
echo >&2
read -n 1 -s -p $'Control-J leaves cursor on next line. \x0a '
echo >&2 

########

read -n 1 -s -p $'And Control-K\x0b goes staright down '
echo >&2 #CtRL+K Vertical Tab.


###### A better example of the effect of a vertical tab is" 
var=$'\x0aThis is a top line \x0bThis is the bottom \x0a'
echo "$var"