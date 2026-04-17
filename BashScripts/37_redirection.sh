#!/bin/bash 

ping -c 1  www.google.com  > redirect.log

sleep 1

hostname >>  redirect.log

