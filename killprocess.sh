#!/bin/bash

# Script Name:               Kill process
# Author:                    Gerald
# Date of latest revision:   4/28/2023
# Purpose:                   Get list of processes and kill a process

# 1. is ps aux
# 2. use the read command for user input then do the pid (Kill ping with g)
# 2. like use echo "Press 5 to kill ping"
# 3. use kill command with pid
# 4. use this all in a while loop
# use varialbe 
var=5


#Declaration of variables:

#Declaration of functions:
#while 
#ps aux | grep ping 



#Main
#1275 is the pid of pinging google
while [ $var -le 5 ]
do 
    ps aux | grep ping
    echo "press 5 to kill ping process"
    read $var kill 1275
    
done


#end