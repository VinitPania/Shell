#! /usr/bin/bash 

read -p "Give a number :  " numb1 
read -p "Gibe another number " numb2
# this type of statment use for  decimal values 
echo  "$numb1 + $numb2" | bc 
echo "$numb1 - $numb2" | bc 
echo "$numb1 * $numb2" | bc 
echo "scale=2;$numb1 / $numb2"  | bc
echo "$numb1 %  $numb2" | bc 
echo "scale=2;sqrt($numb1)" | bc -l
echo "scale=2;sqrt($numb2)" | bc -l