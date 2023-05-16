#!/bin/bash
#Variable Substitution 

#The name variable is a placeholder for its value , the data it holds.
#Referencing its value is called "variable subustitution"
# To distinguish between the name of the variable and its value .
#If the variable1 is the name of the variable , then the $variable 
#is the reference of its value, the data item it conatain. 
variable1=121
echo variable1 #Calling the name of the variable 
echo $variable1 #Referance  the name of the variable 

# The only time the variable is without prefix is when it is declared or assigned.
#When exported in an in an arithmetic expression within double parentheses((...)).
