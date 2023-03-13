#! /usr/bin/bash

echo -e "Enter a single character or number : \c"
read char

case "$char" in
    [a-z] )
    echo "$char is lower case" ;;
    [A-Z] )
    echo "$char is upper case" ;;
    [0-9] )
    echo "$char is Number " ;;
    ? ) # ? is type of a pattern which except any special characters
    echo "$char is a special character" ;;
    * ) # * is a pattern which accepts any pattern 
    echo "$char Didnt understand  any pattern......." ;;
esac
