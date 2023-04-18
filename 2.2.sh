#!/bin/bash

#This script is use for invocation of time date ,list all logged user ,uptime and save the file in the log files

ROOT_USER=0
E_CDNOTROOT=87



if [[ "$UID" -ne "ROOT_USER" ]]
then
    echo "THE USER IS NOT ROOT"
    exit $E_CDNOTROOT
fi

echo "After if"

date=`date`   #For date and time 
uptime=`uptime` #for uptime 
logged=`who`   #for loggedin users

echo "After cmd running"

echo $date
echo $uptime
echo $logged

