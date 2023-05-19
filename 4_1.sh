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
# Enclosing a referenced value in the double quotes ("....")does not interfaces with variable substitution.
# This is called partial quoting sometimes referred as "Weak Quoting"
# Using single quotes('...') causes the variable name to be literally , and no  subustiution will take place.

# Variable Assignment operator (no space before and after)
#++++++++++++++Note "=" can be assignment operator  or a -eq which is a test operator 
#Naked Variables
#When a varaiable is Naked when it lacks the '$' in front of the variable 
#At thy time is being assigned ,rather than referenced 


#Bash Variable Are Untyped 
#Bash does not segrate its variable by its type.Bash variable are charcter strings.
#It permits arithmetic operations and comparision on variables 
#The determining factor is whether the value of a variable contains only digit 


