#!/bin/bash 

a=10 

until [[ $a -eq 1 ]]
do 
   echo "Value of a is $a"
   ((a--))
done 

echo "  "

a=20

until [[ $a -eq 10 ]]
do 
    echo "Value of a is $a" 
    let a--
done 

