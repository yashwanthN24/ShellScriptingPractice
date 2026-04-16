#!/bin/bash 

############################
# Author : yashwanth 
# Date   : 16/04/2025 
#
# This scripts outputs the node health 
#
# Version : v1
############################ 

set -x  # debug mode


df -h 

free -g 

nproc 


date | xargs echo " Today's date is " 

ps -ef | pgrep dockerd 


ps -ef | grep dockerd | grep -v grep | awk 'print $2' 

