#!/bin/bash
echo "This script can make any of the files in this directory private."
echo "Enter the number of the file you want to protect:"
select FILENAME in *; do
    echo "You picked $FILENAME ($REPLY), it is now only accessible to you."
    # echo $REPLY
    # chmod go-rwx "$FILENAME"
    # select sub in "A" "B"; do
    #     echo $REPLY
    # done
done
