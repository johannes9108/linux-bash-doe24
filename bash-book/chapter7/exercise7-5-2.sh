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
leapYear=$[(( ("$year" % 400) == "0" )) || ((( ("$year" % 4) == "0" ))  &&  (( ("$year" % 100)  != "0" )))]
echo $leapYear

case $month in 
    [2])
        case $leapYear in
        1)
            printf "%s has 29 days\n" "$monthText"
            exit 0
        ;;
        0)
            printf "%s has 28 days\n" "$monthText"
            exit 0
        ;;
        esac
    ;;
    [1|3|4|6|9|11])
        printf "%s has 30 days\n" "$monthText"
        exit 0
    ;;
    *)
        printf "%s has 31 days\n" "$monthText"
        exit 0
esac