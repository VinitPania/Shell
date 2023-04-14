#! /usr/bin/bash
#runnig cmd using for
cmmds=("ls"  "date"  "pwd"  "ansible --version"  "java -version")

for cmd in ls pwd date
do 
    echo "---------------$cmd---------------"
    $cmd 
done

for items in *
do 
    if [ -f $items ]
    then 
        echo "file is $items"
    fi

    
done 

echo "+++++++++++list of cmd array fro loops++++++++++++++++++++++"
for a in "${cmmds[@]}"
do
    echo "++++++++++++++++++++++++$a+++++++++++++++++++"
    $a
done 