#!/bin/bash
#This script is use to find out if the argumented file exist or not 

# this is the usage funcion which will use us to help about how to use the script
# whenever the functions run 
usage (){
    echo "You need to provide an argument "
    echo "Usage of this script is : $0 file_name "
}


is_file_exist () {
    
    local file=$1 
    echo "$file : is_file_exist fun"
    [[ -f "$file" ]] && return 0 || return 1

    # if 0 && 0 || 1
    # if 0 || 1 
    
}

[[ "$#" -eq 0 ]] && usage

 
if (is_file_exist "$1" ) #
then 
    echo "$1 :ifstatment"
    echo "File found "
else
    echo "File Not Found"
fi 

