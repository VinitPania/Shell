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
