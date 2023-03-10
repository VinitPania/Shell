#! /usr/bin/bash 
# Checking the file and if it has write permission then it will cat it in the file 

echo -e "Enter the file name : \c "

read file_name 

if [ -f $file_name ]
then 
    if [ -w $file_name ]
    then 
        echo "To Write something  in the file and for exit use  ctrl+d once " 
        cat >> $file_name
    else 
        echo "$file_name not having the required write permission  "
    fi 
else 
    echo "$file_name dosent created " 
fi            