#!/bin/bash

#Comments can be used between the pipes 
#semicolumns are use to write multiple code in a single line 

#----->#<-------- Its is a special character it has special powers ie to commenting out the line 
#it also use it in Regular expression 

#use of Semicolumn in the bash script 
echo Hellow; echo "there:"
#          ^^--> See the spacing between the semicolumn 
if [ -x  "$filename" ]; then 
#                     ^^-->Here it is used  
  echo "$filename arlready exisit"; cp $filename $filename.bak
                        #        ^^->>Here also hmmm Spacing also matter
else 
    echo "creating the $filename"; touch $filename
#                                ^--->hmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm,Here also noice   
fi; echo "Filetest complete"

# Double Semicolan is used as a termination which is used in Switch Case 
case $variable in 
    abc) echo "$variable is abc";;
    bcd) echo "$variable is bcd";;
    #                           ^^----> here it is used that is the statment  
esac

#   the dot is a seperator it is use to in between of a file and its format ie abc.py
#if we use it in front of the file then it is defined as a hidden file or folder 
#When we use cd then .. it also has it meaning ie if cd single . means curent working directory and .. means parent directory 

#The comma is use to links together the arithmetic operations , All of the operations are evaluated but the last one is  returned 
# Eg:
let" t2=(( a = 33 , b = a / 34 , 3 / 23 ))"
#   in the above cmd it set a = 33 , b = a/34 and t2 = 3 / 23 

#  The comma is also uses to concate the commands such as :
for file in /{,usr/}bin/*calc
# Find all the exe file  ending in "calc" in /bin and in /usr/bin  directories
do 
    if [ -x "$file" ]
    then
    echo $file
    fi
done 