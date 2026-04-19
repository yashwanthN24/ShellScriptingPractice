#!/bin/bash 

FILE_UTILIZATION=$(df -H | egrep -v "Filesystem|tmpfs" | grep "sda2" | awk '{print $5}' |  tr -d %)


if [[ FILE_UTILIZATION -ge 80 ]]
then 
    echo "Warning , disk space is low" 
else 
    echo "All, Good" 
fi


