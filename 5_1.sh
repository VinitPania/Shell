#!/bin/bash
#Table of Contents 
#Quoting Variables 
# Escaping 

#Quoting 

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