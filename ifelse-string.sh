#! /usr/bin/bash

read -p 'Enter the value :' value1 #-> Taking string from user  
read -p 'Enter another value : ' value2 #-> Taking another string from user

# --> Equal to  
if [ $value1 == $value2 ]
then
    echo "Both string are equal"
else 
    echo "Both are un equal"
fi

# -->  Not Equal to  
if [ $value1 != $value2 ]
then
    echo "Both string are  not  equal"
fi

# --> greater than 
if [[ $value1 > $value2 ]]
then
    echo "String are  Greater"
fi

# --> Lesser  than 
if [[ $value1 < $value2 ]]
then
    echo "String are  Lesser"
fi

# --> String is null 
# if [[ $value1 -z $value2 ]]
# then
#     echo "String is Null "
# else 
#     echo "String is not null "
# fi