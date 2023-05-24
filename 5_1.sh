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
# Considet single quotes ("full quoting") to be the stricter method of quoting than double quotes 
