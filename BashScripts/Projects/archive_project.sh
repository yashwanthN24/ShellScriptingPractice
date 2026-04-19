#!/bin/bash 
#$Revision:001$ 
#$Sun Apr 19 20:02:55 IST 2026$

# variables 
BASE=$1 # pass the path you want to perform this achiving larger files above 20MB 

# DAYS=$2 
DEPTH=1 
RUN=0
  
# Check if the directory is present or not 
if [[ ! -d $BASE]]
then 
    echo "directory doesnt exist : $BASE"
    exit 1 
fi 

# Create 'archive' folder if not present 
if [[ ! -d $BASE/archive ]]
then 
    mkdir $BASE/archive 
fi 

# Find the list of files largest than 20MB 
for i in `find $BASE -maxdepth $DEPTH -type f -size +20M` 
do 
    if [ [ $RUN -eq 0 ]]
    then 
        echo "[$(date "+%Y-%m-%d %H:%M:%S")] archiving $i ==> $BASE/archive"
        gzip $i || exit 1 
        mv $i.gz $BASE/archive || exit 1 


done 
