echo $0 $1 $2 $3 '-> $0 $1 $2 $3 $4 ' #$0 print the file name and 1 , 2 , 3 print the rest of the args  

args=("$@") #pputting value of default variable to args 

echo $@ #->Default variable for storing the args 

echo $# #-> Default variable for storing in numbers  of argument 

echo ${args[0]}  ${args[1]} ${args[2]} ${args[3]} 