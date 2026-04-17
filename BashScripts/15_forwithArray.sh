#!/bin/bash 

myarray=(12 hello "yash" 34.83)

length=${#myarray[*]}

echo  "length of array is $length"

for ((i=0; i<$length; i++))
do 
    echo "Value at index $i is ${myarray[$i]}" 
done 

