#! /usr/bin/bash   

for (( i=1; i<20; i++ )); do
    if [ $i -eq 10 ]
    then
        echo "Break loop"
        break
        #continue keyword not working in this script 

        #now its working 
    
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


for (( i=1; i<20 ; i++ ));do 
    if [ $i -eq 3 -o $i -eq 12 ]
    then 
        echo "Skipping the 3 and 12 "
       
        continue
    fi
     
    if [ $i -eq 14 ]
    then 
        echo "Breaking the loop"
        break
    fi 
    
    echo $i

done