#! /usr/bin/bash
#select loops to create simple menus 

# select name in apple custeredapple pineapple goldenapple  # it take number as an input 
# do 
#     echo $name selected 
# done
#this is an infinite loop it will keep on going on and on 
select name in mark john kaila Amongus 
do  
    case $name in 
    mark)
        echo $name selected ;;
    john)
        echo $name selected ;;
    kaila)
        echo $name selected ;;
    Amongus)
        echo $name selected ;;
    *)
        echo "Unknown select between 1...4" ;;
    esac
done