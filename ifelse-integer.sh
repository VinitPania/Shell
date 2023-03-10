#! /usr/bin/bash
# start with if [condition ] then [statment] fi  -> structure of  if else  of integer
read -p 'Enter the value :' value1 #-> taking value from user  
read -p 'Enter another value : ' value2 #-> taking another value from user 



# --> if the value is equal it will print "The value is equal" (-eq flag)
if [ $value1 -eq $value2 ] #there should be spacing between them 
then 
    echo "The value is Equal "
fi 

# --> If the value is not equal the print the value is not equal  (-ne flag)
if [ $value1 -ne $value2 ]  
then 
    echo "The value is Not-Equal "
fi 

# --> If the Fist-Value is greater then Second-Value this condition will print (-gt flag)
if [ $value1 -gt $value2 ]  
then 
    echo "The value is Greater "
fi 

#--> Using the Symbol of Greater than >
if (( $value1 > $value2 ))
then
    echo "The value is greater  "
fi


# --> If the First-Value is Greater or Equal then this condition will print (-ge flag)
if [ $value1 -ge $value2 ]  
then 
    echo "The value is Greater Than or Equal  "
fi
# --> Using the Symbol Of greater than Equal >= to  and for using symbol we need double parantheesis
if (( $value1 >= $value2 ))  
then 
    echo "The value is Greater Than or Equal  "
fi


# --> If the First-Value is Lesser than Second-Value then this condition will print (-lt Flag)
if [ $value1 -lt $value2 ]
then
    echo " The Value is Lesser  than the number  "
fi

# --> Using the Symbol of Less than
if  (($value1 < $value2))
then 
    echo "Using the Symbol of less than < "
    echo "The Value is Lesser  "
fi 

# --> If the First Value is Lesser or Equal to Second Number than this condition will run (-le Falg)
if [ $value1 -le $value2 ]
then 
    echo "The Value is Lesser or Equal than the Number "
fi 

#--> using the Symbol of lessthan Equal 
if (($value1 <= $value2 ))
then 
    echo "Using the Symbol of less than <= "
    echo "The Value is Lesser or Equal than the Number "
fi 