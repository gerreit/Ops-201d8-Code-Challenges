#!/bin/bash

# Script Name:               Coding Challenge 13
# Author:                    Gerald
# Date of latest revision:   5/10/2023
# Purpose:                   fetch domain info
# use Whois dig host nslookup

#Declaration of variables:
echo "What website would you like to look up"
read lookup

#Declaration of functions:
details () {
    whois $lookup >> info.txt
    echo
    echo
    dig $lookup >> info.txt
    echo
    echo
    host $lookup >> info.txt
    echo
    echo
    nslookup $lookup >> info.txt
}


#Main

details

echo "Would you like to delete the info.txt file"
read response
if [ "$response" = "Yes" ];
then rm info.txt
fi


#End