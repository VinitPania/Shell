#!/bin/bash
#Table of Contents 
#Quoting Variables 
# Escaping 

#Quoting *************************************************************

#Quoting means just , bracketing  a string in quotes.This has the effects of 
#protecting special characters in the  String from reinterpretation or expansion by the shell or 
# Shell Script 

# when we "Quote" we set it apart and giv its special meaning .In Bash script when we quote 
# a string we set it apart and protect its special meaning.

#Certain program and utilities reinterpret or expand special chatacter in a quoted string .
# An important use of quoting is to protecting a commnand line parameter from the shell , but still 
#  letting the calling program expand it.
`grep '[Ff]irst'*.txt` 
# Note that the unquoted grep '[Ff]irst'*.txt works under the Bash shell.

#Quoting can also supress echo's "appetite" for newlines.
#Unless there is a file named first in the current working directory.Yet another reason to quote

#Quoting Variables ******************************************************

#when referencing a variable it is generally advisable to enclose its name in the double quotes 
# This prevents reinterpretation of all special characters within the quoted string --except $ ,`(backquote)
# and \ (escape) . keeping $ as a special caracter within double quotes permits referencing a quoted
# variable ("$variable") that is repalcing  the variable with its value 

#Use double quotes to prevent word splitting .An argument enclosed in double quotes represent itself 
# as  a single word even if it conatian whitespace seperators.

#Enclosing the arguments to an echo statments in double Quotes is necessary only when word splitting
# or preservaion of whitespace is an issue


# Single Quotes ('') operate similarly to double quotes, but do not permit referencing  variables,
# since the special meaning of $ is turned off.
#  Within single quotes every special character expect gets interpreted literally 
# Considet single quotes ("full quoting") to be the stricter method of quoting than double quotes ("partial quoting").
# Double quotes following the echo sometimes escape \. Moreover , the -e option to echo causes the "\t" to be interpreted as a tab
#When Encapsulating "!" gives us an error when used from the command line .This is interpreted as a history command.
# Writing the "!" in the script the problem wont occur since Bash History is disabled in the script




##################################Escaping#########################################
#Escaping is a method of quoting single character. The  escape (\) presceding a character tells a shell to interpret that character literally
#while using the  "echo" and "sed" escaping a chahracter may have a opposite effect  -it can toggle the opposite meaning for that character.

##Special meaning of certain character used with echo and sed  ###
#   \n   --> means newline 
#   \r   --> means return 
#   \t   --> means tab 
#   \v   --> means vertical tab 
#   \b   --> means backspace 
#   \a   --> means aleart (beep or flash )
#   \0xx --> translate to octal  ASCII equivalant to 0nn, where nn is string of digits
#   \"   --> Gives Quote its literal meaning
echo "Hello";echo "\"Hello\" ..... he said."     
#   \$   --> Gives the Dollar sign its literal Meaning 
echo "\$variable01";echo "The book cost \$420.69." 
#   \\   --> Gives the backslash its literal meaning 
# NOTE ----> THE BEHAVIOR OF \ DEPENDS ON WEATHER IT IS ESCAPED, STRONG-QUOTED, WEAK-QUOTED 
# OR APPREARING WITHIN COMMAND SUBSTITUTION 