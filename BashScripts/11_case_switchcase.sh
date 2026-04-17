#!/bin/bash 

echo "Enter a)to see current date" 
echo "Enter b)to see all files in current directory" 

read -p "Enter your choice :  " choice 

case $choice in 
    a) date;;
    b) ls;;
    *) echo "Invalid choice" 
esac

