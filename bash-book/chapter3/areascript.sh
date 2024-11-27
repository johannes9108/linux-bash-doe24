#!/bin/bash
echo "Calculating square area"

if [ -z $1 ]; then
	echo "Not set - Setting var1 = 10"
	#Assigning var1
	var1=10
else
	echo "Var1 = $1"
	var1=$1
fi	
if [ -z $2 ]; then
	echo "Not set - Setting var2 = 20"
	#Assigning var2
	var2=20
else
	echo "Var2 = $2"
	var2=$2
fi	
#Assigning the calculation based on the variables
area=$(($var1*$var2))
fgColor="\e[1;92m"
end="\e[0m"
echo -e "Result ${fgColor}${area}${end}"
