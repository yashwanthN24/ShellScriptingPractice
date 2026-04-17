#!/bin/bash 

count=0 
num=5

while [[ $count -lt $num ]]
do 
    echo "number is $count"
    ((count++))
done

echo " "

echo $count

count=0 

while [[ $count -lt $num ]]
do 
    echo "Number is again : $count" 
    let count++
done 


