#!/bin/bash
# Variable assignment and substitution 
a=374
hello=$a

# No space is permitted on either side of = sign when initialializing variables.
# What happens if there is a space?

#"VARIABLE =value"
#         ^   
# Script tries to run "Variable" command with one argument, "=value".

# "VARIABLE=  value"
#            ^
# SCript tries to run "value" command with the environment variable set to "".


echo hello #hello 
# Not a variable refernce , just a string "hello".

echo $hello #374
#    ^  This *is* a variable reference.

echo ${hello} #374
# Likewise a variable reference , as above .

# Quoting 

hello="A B C     D"
echo $hello #A B C D
echo "$hello" #A B C     D
# As we see , echo $hello and echo "$hello" give different result.
 # ++++++++++++++++++++++++++++++++++++++
# Quoting preserve the whitespace 
# ++++++++++++++++++++++++++++++++++++++++
echo 

echo '$hello'  #$hello

# Variable referencing diabled (escaped) by the single quotes, Which causes the "$" to be interpreted literally.

#------------------------------------------------------------

# It is permissible to set multiple variables on the same line, if serperated by white space 
#  Caution , this may reduce legibility , and may not be portiable.

var1=232 var2=3233 var3=$V3
echo
echo "var1=$var1 var2=$var2 var3=$V3"

#May cause problen with leagacy version of "sh"
# -------------------------------------------------

echo; echo
number="one two three"
#          ^   ^
other_numbers="1 2 3"
#               ^ ^
#If the whitespaces embeded within the variable the quotes are necessary.
# other_numbers=1 2 3 ----> gibes error message 
echo "numbers = $number"
echo "other_numbers = $other_numbers" #other_numbers=1 2 3 

# Escaping the whitespace also works 
mixed_bags=1089\ ----\ Vegito
#               ^     ^   Spaces after escape (\).
echo "$mixed_bag"     #1089 ---- Vegito
echo; echo



# -----------------------------------------------------------

#Set and Unset 

echo "uninitiallized_variable = $uninitialized_variable"
#Uninitialized variable has a null value (no value at a;lllllllll!).

uninitialized_variable= #Declaring , but not initializing it same as setting it to a null value, as above,

echo "uninitialized_variable = $uninitialized_variable"
#It still has a null value 

uninitialized_variable=1313  #set it 
unset uninitialized_variable #unset it 
echo "uninitialized_variale  = $uninitialized_variable"
#It still has a null value 
echo

#+++++++++++++++++NOTE+++++++++=+  
# An uninitialized variable has a "null" value -- no value is assigned 
# NOT EVEN ZERO 

if [ -z "$uninitialized_variable"  ]
then 
    echo "\$unassigned_variable is NULL"
fi # "$unassigned_variable is NULL"

# Using a variable before assign a value to it may cause problems .
# It is nevertheless possible to perform arithmetic operations on an unitilized variable 

echo "$uninitialized_variable "   # (blank line )
let "uninitialized_variable += 5" # Add 5 to it 
echo "$uninitialized_variable"  # 5 

# conclusion 
# An unitialized variable has no value however it evaluates as 0 in an arithmetic operation



#Plain Variable Assignment 

#Assignment 
a=121112; echo "The value of \"a\" is $a. "

#Assignment using 'let'
let a=1650+1660; echo "The value of \"a\"īs now $a. "

echo 

# In a for loop (really a type of disgusied assignment)
echo "The value of \"a\" in for loop are :"
for a in 88 1 232 11010
do 
    echo -n "$a"
done 

echo 
echo 

# In a read statment is also  type of assignment
echo -n  " Enter balue of \"a\" "
read a 
echo "The value of \"a\" is $a "
echo 


# +++++++++++++++Variable Assignment Plain and Fancy+++++++++++++++++
a=121 #Simple case 
echo "Value of a \"a\" is $a "
b=$a 
echo "Value of \"b\" is $b "

# Now we are getting a little bit fancier 
a=`echo Hello!` #Assigns  result of 'echo' command to 'a'
echo $a
#Note that including an exclamation mark (!) within a command subustion construct will not work from the command line since the triggers the Bash "history mechanism."
#Inside a script , however  the history function are disabled by default 

a=`ls -l` #Assign result of 'ls -l' to 'a'
echo $a   # Unquoted, however , it removes tab and newlines

echo 

echo "$a"   #The quoted variables preserve the Whitespace


# Integer or string Exprience 
a=2332
let "a += 1"    #Integer 
echo "a = $a"   #a=2333
echo            #Integer, still

b=${a/23/BB}    #Substitute "BB" for "23".
                #This transforms $b into a string 
echo "b = $b"   #b = BB33
declare -i b    #Declaring it as a integer but it dosen't help 
echo "b = $b"   #b = BB33

let "b += 1"    #BB33 + 1
echo "b = $b"   # b = 1
echo            # Bash sets the "integer value " of a string sets to 0.

c=BB34
echo "c = $c"   # c = BB34
d=${c/BB/23}    # Subustitute "23" for "BB" .
                #This makes $d an integer.
echo "d =$d"    #d = 2334
echo " d += 1 " #2334 + 1
echo "d = $d "  # d = 2335
echo 

#What about Null variables and undeclared variables?
e=''            #... Or e="" ... Or e= --> Null Variables 
echo "f = $f"   # f =  --> Undeclared variables 
echo "e = $e"   # e =
let "e =+1"     #Arithmetic operations allowed on  null variables .
let "f +=1"     #Arithmetic operations allowed?
echo "e =$e"; echo "f =$f" Null variable ie "e" Transformed into variable and Undeclared variable also transformed into variable.
echo

#How ever
let "f /= $undecl_var" #Divided by zero?
# let: f/= : syntax error : operand expected (error token is " ")
#Syntax error ! Variable $undecl_war is not set to zero here!

let "f/= 0"
#   let: f /= 0: division by 0 (error token is "0")
#Expected behaviour 

#Bash automatically sets the "integer value" of null to zero when performing an arithmetic operation

#Example of positional Parameters 

MINPARAMS=10 #Minimum parameters value which is defined 
echo

echo "The name of the script is \"$0\"."
#Adds ./ for the current directory
echo "The name of the script is \"`basename $0`\"."
#Strips out the path name info 

echo 
if [ -n "$1"]
then 
    echo "Parameter #1 is $1" #Needs Quotes to escapes #
fi 

if [ -n "$2" ]
then 
    echo "Parameter #2 is $2"
fi 

if [ -n "$3" ]
then 
    echo "Parameter #3 is $3"
fi 

if [ -n "$4" ]
then 
    echo "Parameter #4 is $4"
fi 

if [ -n "$5" ]
then 
    echo "Parameter #5 is $5"
fi 

if [ -n "$6" ]
then
    echo "Parameter #6 is $6"
fi 

if [ -n "$7" ]
then 
    echo "Parameter #7 is $7"
fi 

if [ -n "$8" ]
then 
    echo "Parameter #8 is $8"
fi 

if [ -n "$9"  ]
then 
    echo "parameter #9 is $9"
fi 

if [ -n "${10}" ]
then 
    echo "parameter  #10 ${10}"
fi 

echo "======================================================="

echo "All the command-line parameters are: "$*""

if [ $# -lt "$MINPARAMS" ]
then 
    echo 
    echo "This script need at least $MINPARAMS command-lines arguments!"
fi 
echo 

#Indiect Referencing 

args=$#
lastargs=${!args}
#Note : This is an *Indierct referencing* to $args

#Or: lastargs=${!#}
#This is an * indirect referencig * to the $# variable.
# Note that lastargs=${!$#} dosen't work.

variable1_=$1 #Rather than variable1_=$1
#This will prevent an  error, Even if positional parameter is absent.
critical_argument01=$variable1_

#The extra character can be stripped later off .
variable1=${variable1_/_/}
#Side effect only if variable1_ begins with an underscore.
#This uses one of the parameter subustitution.
#(Leaving out the replacement pattern result in deletion)

#A  more straightforword way of dealing with this is to simply test whether 
#+expected positional parameter have been passed 

if [ -z $1 ]
then 
    exit $E_MISSING_POS_PARAM
fi


# wh,whois domain name lookup
#Does a 'Whois domanin-name ' lookup on any of 3 alternate servers:
# ripe.net, cw.net, radb.net

#Place this script -- renamed 'wh' in /usr/local/bin 

#Requires symbolic links:
# ls -s /usr/local/bin/wh /usr/local/bin/wh-ripe
# ls -s /usr/local/bin/wh /usr/local/bin/wh-apnic 
# ls -s /usr/local/bin/wh /usr/local/bin/wh-tucows

E_NOARGS=75

if [-z "$1" ]
then 
    echo "Usage: `basename $0` [domain-name]"
    exit $E_NOARGS
fi

# Check Script name and call proper server.

case `basename $0` in #or : case ${0##*/} in 
    "wh" ) whois $1@whois.tucows.com;;
    "wh-ripe" ) whois $1@whois.ripe.net;;
    "wh-apnic" ) whois$1@whois.apnic.net;;
    "wh-cw"    ) whois $1@whois.cw.net;;
    *       )   echo "Usage : `basename $0` [domain-name]" ;;
esac

 