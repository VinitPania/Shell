#! /usr/bin/bash

os=(  'linux'  'windows'  'ubuntu'  'Android' )
os[4]='Archlinux'
os[56]='popos'
echo "${os[@]}"
echo "${os[1]}"
echo "${!os[@]}" #  ----> is use to print the number of elements in an array 
echo "${#os[@]}" #     # --->is use to print the length of an array
echo "${#os[1]}" # print the length of the particular element
echo "${os[@]}"

unset os[0]

echo "${os[@]}"