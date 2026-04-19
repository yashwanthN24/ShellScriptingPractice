#!/bin/bash 

FREE_SPACE=$(free -mt | grep "Total" | awk '{print $NF}')
THRESHOLD=500 

if [[ $FREE_SPACE -lt THRESHOLD ]]
then 
    echo "Warning, RAM is running low" 
else
    echo "RAM Space is sufficient - $FREE_SPACE" 
fi
