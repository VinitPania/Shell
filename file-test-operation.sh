#! /usr/bin/bash
#first give the executon prmission to .sh file 
echo  -e  "Enter the file name to be check :  \c " 
#-e if the file exesisit or not 
#-f  check the type of file  [check  for file  
#-d to check for directory  [check for directory]
#-c for character special 
#-b for block special  
#-s checks if a file is empty or not 

read  file_name 

#check for file  name 
if [ -e $file_name ]
then 
    echo "The  $file_name is found "
else 
    echo "The $file_name is not found "
fi 

#check  for directory name 
if [ -d $file_name ]
then 
    echo "The dir  $file_name is found "
else 
    echo "The dir $file_name is not found "
fi

# Check file name is empty or not 
if [ -s $file_name ]
then
    echo " The $file_name is not empty "
else 
    echo " The $file_name is     empty"
fi


