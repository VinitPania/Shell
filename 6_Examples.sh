#!/bin/bash

#exit/exit status 
echo "Hello Worst"
echo $? #Exit status return zero as the command returned successfully 

# lsdfk  #Unrecognized Command 
# echo $? #Non zero exit status returned -- command failed to execute.

echo 
exit 113 #Will return 113 exit code  to shell
         #To verify this type $? after the script executes  

# Negating a condition using a "!"
true #Builtin "true"
echo "Exit status of the \"true\" = $?" # 0 

! true 
echo "Exit status of the \"! true\" = $?" #1
# While writting the ! with command there should be space between ! and the command if there is no space then there will be an error of command not found
# Eg ! true == right "execute successfully"
# Eg !true == false "command not found error"

true 
!true
#In this above command "!" operator prefixing a command invokes the Bash History command 


