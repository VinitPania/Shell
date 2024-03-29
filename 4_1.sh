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


# +++++++++++++++++Bash Variable Are Untyped++++++++++++++++++++ 
#Bash does not segrate its variable by its type.Bash variable are charcter strings.
#It permits arithmetic operations and comparision on variables 
#The determining factor is whether the value of a variable contains only digit 
#untyped Variables are both blessing and a curse.

#++++++++++++ Special types Variable +++++++++++++++++++

#Local Variable 
#Variable visible only within a code block or function 

#Environment Variable
#Variable that affect the behivour of the shell an user interface 

#If a script sets a environment variables they need to be "exported " that is reported to the environment local to the script .This is the function of the ezport command 
#A script can export variables only to child process that is only to the commands or processes.
#Child processes cannot export variables to the parent processes 

#Positional Parameters 
#Arguments Passed to scripts from the command lines
# command $0 $1 $2 $3 $4 and so on 
#After the 9th the argumensts must be enclosed in the brackets for eg ${10}, ${11} etc
# The Specials variables $* and $@ denote all psitional parameters 

#Indirect Referencing
# The Brackets notation for positional parameters leads to a fairly 
#simple way of referncing the last arguments passed to a scripts on the command line 

#If a script expects a command-line parameter but is invoked without one this may
#cause a null variable assignment, generally an undesirable result.One Way to prevent this 
#is to appned an extra character to both the sides of the assignment statments using 
#the expected positional parameter.

#The Shift command ******************************

#The Shift caommand reassigns the positional parameters , in the effect shifting them 
# to the left one notch .

 # $1<----$2,$2<----$3,$3<-----$4 etc
 # The old $1 disappear but $0 (the script name ) does not change .If you uses 
 # a large number of positional parameter to the script , shift lets you access 
 # those past 10 although {brackets} notation also premits this .

# The shift command can take a numerical parameter parameter indicating how many positions to shift.


# The functions also take positional parameters 
# The process calling the scripts sets $0 parameters.By conventions , this parameter is the
#  name of the script 
# if the script is sourced or symlink then this will not work 

