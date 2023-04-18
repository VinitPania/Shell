#!/bin/bash
# this is the advance version for cleaning up the logs file 


#Declaring the Variables 
LOG_DIR=/home/jenkins/Desktop/Bash
ROOT_ID=0 #Root id code 
LINES=11 #No of lines to save in logs 
E_CDND=86  #Exit code for not changing the Directory 
E_CDNOTROOT=87 #Exit code if the user is not root 

#Run the script as root 
if [[ "$UID" -ne "ROOT_ID" ]]
then 
    echo "The user not root."
    exit $E_CDNOTROOT
    
fi



if [ -n  "$1" ]
then
    #Checking if the user has given any arguments for no of lines 
    lines=$1
    echo"$lines"
else
    lines=$LINES #If any user has not givn any arguments then take it from the script
    echo $lines
fi



#Changing the directory 
cd $LOG_DIR

#Checking if we are in right path or directory.
if [ `pwd` != "$LOG_DIR" ] #this uses the the sign which is below ~ 
then 
    echo $PWD
    echo "Cant change to $LOG_DIR"
    exit $E_CDND
fi


#Removing of previous log and copying specified no of lines 
tail -n $lines log1 > log1.temp
mv log1.temp  log1 

#Exiting with zero error
exit 0