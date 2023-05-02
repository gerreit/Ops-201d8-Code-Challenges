#!/bin/bash

# Script Name:               Lshw
# Author:                    Gerald
# Date of latest revision:   5/2/2023
# Purpose:                   Display specified information 

#Declaration of Variables :

#hardware=( "cpu" "ram" "display" "network" )
#would be something like sudo lshw -class ${hardware[@]} and if cpu grep for desired info
#put in conditional if loop maybe this is the hard way though
#this is absolutely over complicating this 

#Declaration of functions:


#Main
#sudo lshw
#sudo lshw -class cpu | grep -v ${cpu[@]}
#sudo lshw -class cpu | grep -v "capabilities"; grep -v "width"
echo "CPU"
sudo lshw -class cpu | grep "product\|vendor\|physical id\| bus info\|width"
echo
echo "RAM"
sudo lshw -class ram | grep "description\|physical id\|size"
echo
echo "Display"
sudo lshw -class display | grep -v "logical name\|version"
echo
echo "Network adapter"
sudo lshw -class network

#End