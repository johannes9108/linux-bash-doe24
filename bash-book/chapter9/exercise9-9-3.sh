#!/bin/bash

USAGE='Usage: $0 pathToDirectory'

if [ "$#" != 1 ]; then
    printf "$USAGE\n"
    exit 1
fi

if [ ! -d "$1" ]; then
    printf "$1 is not a directory \n"
    exit
fi

counter=1
printf "The most recently modified files\n"
for file in $(ls --sort=time --full-time -l $1 | sed '1d' | head -n 5 | awk '{print $9 "_" $6 "_" $7}'); do
    printf "$((counter++)). $file\n"
done
printf "\nThe Biggest files\n"
for file in $(ls -lhS scriptFolder/ | sed '1d' |
    head -n 5 | awk '{print $9 "_Size:" $5}'); do
    printf "$((counter++)). $file\n"
done
