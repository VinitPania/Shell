#! /usr/bin/bash

for i in 1 2 3 4 5 
do  
    echo $i
    
done 
echo 1st for loop ended 
echo 2st for loop started 

for i in {1...10}
do 
    echo $i
done 
echo 2nd loop end 
echo 3rd loop started 
for i in {10..-10..-2} #{START..END..INCREMENT/DECREMENT} the value is in range and the value is incremented by 2 default increment is 1 
do  
    echo $i
    
done 
echo 3rd for loop ended 

echo 4st for loop started 
for  (( i=-100; i<100; i=i+10))
do 
    echo $i
done
echo 4st for loop ended 