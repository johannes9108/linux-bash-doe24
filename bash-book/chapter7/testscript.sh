#!/bin/bash
FILE=$PWD/$1
#set -x
printf "Checking for file %s\n" $FILE 
if [ -a $FILE ]; then
	echo "File exist"
else
	echo "File doesnt exist"	

fi

if [   1 == 2   ]; then
	echo "Yes"
else
	echo "no"
fi

if [ $? -eq 0 ]; then
	echo "that was a good job"
fi

if [ "155" -gt "150" ]; then
	echo "Bigger"
else
	echo  "Smaller"
fi
