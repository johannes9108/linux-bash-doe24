#!/bin/bash

printf "Enter your age: "
read age
echo "You age is $age"
if ((age >= 16)); then
    printf "You can drink alcohol"
else
    printf "Go away, you have to wait %d years\n" $((16 - age))
fi
#$((16 - "$age"))
