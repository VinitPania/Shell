#! /usr/bin/bash 

echo -e "Filename : \c"
read file_name # --> creating variable for storing filemname 
# First way to read file 
while read p
do
    echo $p
done < $file_name  # --> using variable for reading file  



#Another way to read file adding sleep timming 
cat $file_name | while read p
do 
    sleep 1
    echo $p
done


# using IFS for reading the file using while loop 
while IFS=' ' read -r p 
do 
    echo $p
done < $file_name