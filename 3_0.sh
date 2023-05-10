

#Comments can be used between the pipes 
#semicolumns are use to write multiple code in a single line 

#----->#<-------- Its is a special character it has special powers ie to commenting out the line 
#it also use it in Regular expression 

#use of Semicolumn in the bash script 
echo Hellow; echo "there:"
#          ^^--> See the spacing between the semicolumn 
if [ -x  "$filename" ]; then 
#                     ^^-->Here it is used  
  echo "$filename arlready exisit"; cp $filename $filename.bak
                        #        ^^->>Here also hmmm Spacing also matter
else 
    echo "creating the $filename"; touch $filename
#                                ^--->hmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm,Here also noice   
fi; echo "Filetest complete"

#--> ;;  Double Semicolan is used as a termination which is used in Switch Case 
case $variable in 
    abc) echo "$variable is abc";;
    bcd) echo "$variable is bcd";;
    #                           ^^----> here it is used that is the statment  
esac

# --> .  the dot is a seperator it is use to in between of a file and its format ie abc.py
#if we use it in front of the file then it is defined as a hidden file or folder 
#When we use cd then .. it also has it meaning ie if cd single . means curent working directory and .. means parent directory 

#The comma is use to links together the arithmetic operations , All of the operations are evaluated but the last one is  returned 
# Eg:
let" t2=(( a = 33 , b = a / 34 , 3 / 23 ))"
#   in the above cmd it set a = 33 , b = a/34 and t2 = 3 / 23 

#  The comma is also uses to concate the commands such as :
for file in /{,usr/}bin/*calc
# Find all the exe file  ending in "calc" in /bin and in /usr/bin  directories
do 
    if [ -x "$file" ]
    then
    echo $file
    fi
done 

#  / --> Act as a seperator
# `` ---> is a baktick use to execute the command 
# : ----> it is a no op , a do-no nothing operation, also used as a null command  

# ---> : As A placeholder 
: ${username=`whoami`}
echo $username


##      : As a seperator 
echo $PATH
#/home/jenkins/.vscode-server/bin/704ed70d4fd1c6bd6342c436f1ede30d1cff4710/bin/remote-cli:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/usr/lib/jvm/java-11-openjdk-amd64/bin:/usr/lib/jvm/java-11-openjdk-amd64/bin
#The : here is used as a seperator in the $PATH variable 

# : is also used as a function refer --> 3_1.sh 

# A colon can serve as a placeholder in an otherwise empty function
#Refer the 3_1.sh 

# -->  ! is used to reverse or negate the the value as a not equal to sign ; It also invert the exit status 
#  It also use to do indirect variables reference 
# It also use too enable the history function in the editor

# ---> *  Wild card asterisk is used for globbing. By itself it will match every filename in a given directory.
    # Also represent the any number of zero character in a regular expresion.
   # **  exponentiation or extending file matching globbing 



# ---> ? Test operator ; it indicates the test for a condition 
#conditionl?result-if-true:result-if-false
var1=2121
(( var0 = var1<98?9:21 ))  #Short form 
#Long form of the same above expression 
if [ "var1" -lt 98 ]
then
    var0=9
else
var0=21
fi
# It is used  filename expansion globbing 


# ------? $ A Prefixing variable name indicates the value the vriable holds 
#End of line Regular expression  a "$" indicates end of line in reglar expression

#----> $? it hold the exit status of a command of a function or a shell script 

#----> $$ it hold the process id of the script in which it appears 

# -----> () the commands which is written in the parentheses it starts a subshell
# Variables inside parentheses () , within the subshell, are not visible to the rest of the script. 
#The parent process, the script, cannot read variables created in the child process, the subshell
# Example 
a=123
(a=321;)
echo $a
# a inside () is act as a local variabele 

#-----> Array Initialization
Array=(element1 element2 element3)
echo $Array

#Brace Expansion 
echo \"{These,words,are,quoted}\" #Brace Expanssion 
# output--> "These" "words" "are" "quoted"

cat {file1,file2,file3} > all_file
#concaniate the file1 , file2 ,file3 combining into a single file called all_file 

cp all_file{txt,backup}
#Copies all_file.txt content to all_file.backup 

######################+++++++++++++++++++++++++++++++++++++#########################
#No spaces allowed within the braces unless the spaces are quoted or escaped.
###############################++++++++++++++++++++++++++++++++#######################

echo {file1,file2}\ :{\ A," B",' C'}
#file1 : A file1 : B file1 : C file2 : A file2 : B file2 : C

#Extended Brace 
echo {a..z} #output a b c d e f g h i j k l m n o p q r s t u v w x y z
echo {0..9} #output 0 1 2 3 4 5 6 7 8 9 10  

# base_charset=( {A..Z} {a..z} {0..9} + / = )
# echo $base_charset

#Block of code {   code }  
#It create an anonymous function 
# Unlike a function a variable inside a code block remain visible to the remainder of the script 
#{ local a; a=123 } --> local variable can be used in a function not in blocks 
#The code block enclosed by the braces may have I/O Redirected to and from it 
#Example 
a=123
{a=321; }
echo "a=$a" #output is a=321


#--->{} can used as a place holder for output text
ls . | xargs -i -t cp ./{} $1
#            ^^         ^^

# From "ex42.sh" (copydir.sh) example.

# -----> For adding an array element ,also used as to delineate a range of characters 
Array[1]=slot_1
echo ${Array[1]}

# $[..] For integer expansion 
a=3
b=3
echo $[$a+$b] #6
echo $[$a*$b] #9

# \<,\> Word Boundary in regular expression 
#grep '\<the\>' textfile

# |----> Pipe : Passes the (stdout) of previous command to the input (stdin) of the next one or to the hell .
# This method chainning the commands together 
# echo ls -l | sh 
# cat *.lst | sort | uniq
# Merges and sorts all ".lst" files, then deletes duplicate lines 
# The pipe runs as the child process and therefore cannot alter script variables 
# If one of the commands in the pipe aborts this prematurely terminates execution of the pipe
# Called a broken pipe this condition sends a SEGPIPE signal

# ------> & -> Run a job in background.
# A command followed by an & will run in the background 
# Wthin the script commands and  even loops my run in background 


