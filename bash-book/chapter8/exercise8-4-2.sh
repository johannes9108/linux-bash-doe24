#!/bin/bash

if [ -f "$1" ]; then
    printf "Which program do you want to use for compression?\n"
    cat <<CHOICES
gzip
bzip2
zip
CHOICES
    read choice

    case $choice in
    gzip | bzip2) $choice -k $1 ;;
    zip) $choice "$1.zip" $1 ;;
    *) printf "Not a proper choice!\n" ;;
    esac

else
    printf "File cannot be found\n"
fi

# printf "Enter your age: "
# read age
# echo "You age is $age"
# if ((age >= 16)); then
#     printf "You can drink alcohol"
# else
#     printf "Go away, you have to wait %d years\n" $((16 - age))
# fi
# #$((16 - "$age"))
