#!/bin/bash
#set -x
month=$(date +%m)
year=$(date +%Y)
echo $1

if [ $1 ]; then
    printf "Month has been set to %d", $1
    month=$1
fi
monthText=$(date -d "0-$month-1" +%b)
echo $monthText

if [ $month == "2" ]; then
    if    (( ("$year" % 400) == "0" ))   ||  ((( ("$year" % 4) == "0" ))  &&  (( ("$year" % 100)  != "0" ))) ; then
        printf "%s has 29 days\n" "$monthText"
    else
        printf "%s has 28 days\n" "$monthText"
    fi
elif (( "$month" == "4")) || (( "$month" == "6" )) || (("$month" == "9")) || (("$month" == "11" )); then
    printf "%s has 30 days\n" "$monthText"
else
    printf "%s has 31 days\n" "$monthText"
fi
