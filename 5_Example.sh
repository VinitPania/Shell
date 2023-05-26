#!/bin/bash

List="one two three"

for a in $List # Splits the variable in parts at whitespace.
do 
    echo "$a"
done 
#one
#two 
#three

echo "----"

for a in "$List" # Preserve whitespaces in an single variable.
do #     ^     ^
    echo "$a"
done 
# one two three


#  A more elobrate example 
variable1="a variable containing five words "

COMMAND This is $variable1 # Executes COMMAND with 7 arguments:
#"This" "is" "a" "variable" "containing" "five" "words"


COMMAND "This is $variable1" # Executes COMMAND  with 1 arguments :
#"This is a variable containing five words"

variable2=""  #Empty

COMMAND $variable2 $variable2 $variable2
    #Execute COMMAND  with no arguments.

COMMAND "$variable2" "$variable2" "$variable2"
#   COMMAND executes with 3 empty arguments.

COMMAND "$variable2 $variable2 $variable2"
# COMMAND executes with 1  arguments (2 spaces).


#echoing Weird Variables

echo 
var="'(]\\{}\$\""
echo $var   # '(]\{}$"
echo "$var" # '(]\{}$" Dosent make any difference 

IFS='\'
echo $var       #'(] {}$"     \ converted to space. Why?
echo "$var"     #'(]\{}$"

echo 
var2="\\\\\""
echo $var2  #   "
echo "$var2"  # \\"
echo 

# But ......... var2="\\\\\"" is illegal Why?
var3='\\\\'
echo "$var3"  # \\\\
# Strong Quoting works , though.

#************************************************************####
#As the first example above shows, nesting quotes is permitted.
echo "$(echo '"')"     # "

# At times this comes useful.

var1="Two bits"
echo "\$var1 = "$var1""           #$var1  = Two bits

if [[ "$(du  "$My_File1")" -gt "$(du "$My_File2")"   ]]
then 
     echo "Ok boi"
fi
# Since even the escape character (\) gets a literal interpretation within single quotes, trying to enclose a single quote within single quotes will not yield the expected result.
echo "Why can't I write 's between single quotes"

echo

# The roundabout method.
echo 'Why can'\''t I write '"'"'s between single quotes'
#    |-------|  |----------|   |-----------------------|
# Three single-quoted strings, with escaped and quoted single quotes between.

##########################################################################################################

echo "This part is of Escaping section."

#########################################################################################################

echo ""

echo "This line will 
print as a two line "

# This line will 
# print as a two line 

echo "This will print \ 
as a one line "
# This will print as a one line 

echo; echo 

echo" ==================="

echo "\v\v\v\v\v\v"  # Prints \v\v\v literally
# Use the -e option with "echo" to print the escaped character
echo "================"
echo "  VERTICAL TABS "
echo -e "\v\v\v\v" # Print 4 vertical tabs 
echo "==============="

echo "  QUOTATION MARK"
echo  -e "\042" # Prints "(quotes , octal ASCII character 42)"
echo "================"

# The $'\X' construct makes the -e unnecessary.
echo; echo "NEWLINE and (Beep) maybe"
echo $'\n' #Newline.
echo $'\a' #Alert(beep).
           # Maybe only flash, not beep , depending on terminal.

#We have seen $'\nnn' string expansion , and now . . .

#Version 2 of the Bash intoduced the $'\nnn' string expansion construct.

echo "Introducing the \$\'.... \ ' string -expansion construct . . ."
echo ". . . fraturing more quotation marks "
echo $'\t \042 \t ' # Quote (") framed by the tabs.
# note that '\nnnn' is an octal value.


#It aslo works with hexadecimal values, in an $'\xhhh' construct.
echo $'\t \x22 \t' # Quote  (") framed by the tabs.
#Earlier Bash version allowed '\x022'.


echo 


# Assigning  ASCII  character to a variable.
quote=$'\042'  #" assigned to a variable.
echo "$quote Quoted string $quote  and this lies outside the quotes."

echo 

# Concateenating ASCII char in a variable. 
triple_underline=$'\137\137\137' # 137 is octal AsCII code for '_'.
echo "$triple_underline UNDERLINE $triple_underline"

echo 

ABC=$'\101\102\103\010' # 101, 102, 103  are Octal A, B, C.
echo $ABC
echo 


escape=$'\033'
echo "\"escape\" echoes as $escape "
#                                     no visible output 

echo 





