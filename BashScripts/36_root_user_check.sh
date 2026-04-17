#!/bin/bash 

if [[ !  $UID -eq  0 ]]
then 
    echo "Please login as root user" 
else 
    echo "Login Successful" 
fi 
