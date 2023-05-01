#!/bin/bash

# Script Name:               Make directory
# Author:                    Gerald
# Date of latest revision:   5/1/2023
# Purpose:                   Make a directory if it doesnt exist using conditional if than statements

#need to see if folder exists
#if not make the folder
#First use If statement



#Declaration of variables:
fold=( "fold1" "fold2" "fold3" )

#Declaration of functions:
# [] means read
# -d is directory
#$fold is the name of the array of directories
for i in ${fold[@]}; 
    do  
        if [ ! -d "$i" ];
            then mkdir "$i"
            else echo "These folders already exist"
        fi
done
echo "Do you want to delete the directories"
read response
if [ "$response" = "Yes" ];
then rmdir ${fold[@]}
fi
#use test command to check if directories exist, use array



#Main


#end