#!/bin/bash 

############################
# Author : yashwanth 
# Date   : 16/04/2025 
#
# This scripts outputs the node health 
#
# Version : v1
############################ 


echo " print disk utilization" 
df -h 

echo " print memory info " 
free -g 

echo " print cpu info " 
nproc 