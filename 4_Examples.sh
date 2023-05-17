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
