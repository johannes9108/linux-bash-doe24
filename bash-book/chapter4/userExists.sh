#!/bin/bash
divider="------------------"

echo "Make a script that checks whether a user exists in /etc/passwd. For now, you can specify the user
 name in the script, you don't have to work with arguments and conditio:/nals at this stage."

if [ -z $1 ]; then
	name="root"
	echo "Using root, since no name argument was passed"
else
	name=$1
	echo "Checking if $name is a user"
fi

exp=$(grep -iE "\b${name}\b" /etc/passwd)
res=$([ -z $exp ] && echo " not" || echo "")
echo "User '$name' is$res a user" 
echo "$divider"

echo "Display configuration files in /etc that contain numbers in their names."
ls -lR /etc/ | grep -E '^-'| grep -E ".*[0-9]+.*" 
echo "$divider"
