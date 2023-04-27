#!/bin/bash

# Script Name:               Arrays
# Author:                    Gerald
# Date of latest revision:   4/27/2023
# Purpose:                  Arrays


#Declaration of variables:
#dir 1-4 would normally be declared variables all on their own, but the array lets me refer to multiple at once

#Declaration of functions:
# dir=("dir1" "dir2" "dir3" "dir4")
# touch $dir

#Main

# mkdir dir1 dir2 dir3 dir4
# dir=("dir1" "dir2" "dir3" "dir4")
dir=(dir1 dir2 dir3 dir4)

#echo ${dir[0]}
#echo ${dir[1]}
#echo ${dir[2]} 
#echo ${dir[3]}
for i in ${dir[@]} 
do
    mkdir "$i"
    touch "$i/example.txt"
    #mkdir dir2
    #ouch cd example.txt
done
#touch $dir "professionalcoder.txt"

#End