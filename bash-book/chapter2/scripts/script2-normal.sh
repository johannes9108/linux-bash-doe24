#!/bin/bash
#This script is used as exercise for the Chapter 2 of Bash Beginners Guide

echo "Home location:" "$HOME" # Display home directory
echo 
echo "Current shell: $0 - $TERM" # Display running shell
echo
echo "Display services started in runlevel3" 
ls /etc/rc3.d/S* # Displaying running services

VAL=10 # Setting variable 

echo "Testing value: $VAL" # Printing declared variable

echo "Alternative Shell lookup commands"

