#!/bin/bash 

# This is another way to make a function in shell scripts
welcome(){
    echo "------------------------" 
    echo $SHELL;pwd
    echo "------------------------"
}

# To call the function just mention the function name
welcome 
welcome