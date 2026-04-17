#!/bin/bash 

echo "Provide a choice"
echo "a)To see current date" 
echo "b)To see all files in current directory" 
echo "c)To see current location" 

read -p "Enter your choice : " choice 

case $choice in 
    a) 
        echo " Today's date is : "
        date 
        echo "Ending ..."
        ;;

    b) 
        ls 
        ;;

    c)  
        pwd
        ;; 

    *)
        echo "Invalid choice" 
        echo "Provide any options from a , b or c"
        ;;
esac 
