#!/bin/bash 

count=1
while read value
do 
    echo "Value at line no $count is $value" 
    ((count++)) 
done < names.txt

# you dont need to declare variables it works without that count=0 as well when using with increments 

# but its best practice to declare variables for readability and understanding 

