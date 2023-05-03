

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
#Long form
if [ "var1" -lt 98 ]
then
    var0=9
else
var0=21
fi
