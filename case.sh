#! /usr/bin/bash
echo  "Enter the vehicle name"
read  vehicle 
echo  HMMMMMM $vehicle is a vehicle ??

case  "$vehicle" in
    "car" )
    echo "$vehicle is  car ??" ;;
    "van" )
    echo "$vehicle is this Omini ??" ;;
    "truck" )
    echo "$vehicle helps to get isekai. " ;;
    "sedan" )
    echo "$vehicle why are you not running AC " ;;
    "suv" )
    echo "$vehicle milage nahi nikal ti ??" ;;
    * )
    echo "$vehicle pata nahi kaunsi cheez likha hai  ???" ;;
esac
