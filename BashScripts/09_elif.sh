#!/bin/bash 

read -p "Enter your marks" marks

if [[ $marks -gt 60 ]]
then 
    echo "Your are distinction"
elif [[ $marks -gt 40 ]] 
then 
    echo "Your are pass"
else
    echo "Your are fail!!!" 
fi

