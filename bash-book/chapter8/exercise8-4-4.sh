#!/bin/bash
set -x

if [ "$#" == 1 ]; then
    echo "Good args"
else
    echo "Only provide a single arugment"
fi

# availableID=$(awk 'BEGIN {counter = 0; FS=":"} {if (counter != $3 ) {print counter; exit 0;}} {counter++;}' /etc/passwd)
# echo "Free id is $availableID"

read -r comment
read -r shell
read -r expiration

printf "C - %s, S - %s, E - %s\n" "$comment" "$shell" "$expiration"

# TEST:!:20059:0:99999:7:::
# TEST:x:11:100::/home/TEST:/bin/sh
# TEST:x:1008:

# useradd -e "$expiration" -c "$comment" -s "$shell" -mN -u 11 $1
# groupadd TEST
# echo $(cat /etc/group | grep "TEST" | awk -F: '{print $3}')
