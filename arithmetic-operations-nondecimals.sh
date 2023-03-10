#! /usr/bin/bash 

read -p "Give a number :  " numb1 
read -p "Gibe another number " numb2
# this type of statment use for non decimal values 
echo  "Addition of the two number  : "  $(( numb1 + numb2 )) 
echo "Subtraction of the two number  : " $(( numb1 - numb2 ))
echo "Multiplication of the two number  : " $(expr $numb1 \* $numb2)
echo "Division of the two number  : " $(( numb1 / numb2 ))
echo "Modulous of the two number  : " $(( numb1 %  numb2 ))