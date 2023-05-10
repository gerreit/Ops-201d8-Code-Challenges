#!/bin/bash

# Script:                     Print login history                   
# Author:                     Gerald                  
# Date of latest revision:    4/26/2023  
# Purpose:                    Shows the login history of computer and text that "This is the login history"

#Declariton of Variables



# Basic function

#history () {
  #last -a
  #echo "This is login history"
#}


#Main
history () {
  last -a
  echo
  echo "This is the login history"
}

history
history
history

#end
