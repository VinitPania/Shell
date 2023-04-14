#! /usr/bin/bash   

for (( i=1; i<20; i++ )); do
    if [ $i -eq 10 ]
    then
        echo "Break loop"
        break
        #continue keyword not working in this script 
    
    fi
    
    echo $i
done


for (( i=1; i<10; i++ )); do

    if [ $i -eq 3 -o $i -eq 9 ]
    then
        echo "Continue loop "  
        continue
    fi 

    echo $i

done 


