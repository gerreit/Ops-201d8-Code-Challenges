#!/bin/bash

# Script Name:               Make directories in .txt files in those directories
# Author:                    Gerald
# Date of latest revision:   4/27/2023
# Purpose:                   Make directories and in those directories put .txt files in each one


#Declaration of variables:
#dir 1-4 would normally be declared variables all on their own, but the array lets me refer to multiple at once

#Declaration of functions:
# dir=("dir1" "dir2" "dir3" "dir4")
# touch $dir

#Main

# mkdir dir1 dir2 dir3 dir4
# dir=("dir1" "dir2" "dir3" "dir4")
dir=(dir1 dir2 dir3 dir4)


# in the loop below it executes all the commands under do in order from top to bottom. After it hits the bottom it loops back to the top. the portion on line 24 the $ refers to the array (in this case dir as specified earlier) to and to do the insturctions [x] (or in this case of @ as many times until its out of elements in the array) many times until done. If i put 2 there it would only do 2 of the 4 elements so it would two directories and two .txt files 
for i in ${dir[@]} 
do
    mkdir "$i"
    touch "$i/example.txt"
done


#End
