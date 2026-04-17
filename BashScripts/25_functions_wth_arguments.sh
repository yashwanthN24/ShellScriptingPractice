#!/bin/bash 

function welcomeNote {
    echo "---------------------------" 
    echo "Wecome $1" 
    echo "This is $0 file"
}

welcomeNote raju 
welcomeNote gucci


function welcome {
    echo "Welcome $1 $2" 
}

welcome raju 12