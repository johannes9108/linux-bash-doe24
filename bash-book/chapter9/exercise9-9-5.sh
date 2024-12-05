#!/bin/bash
# This script converts all file names containing upper case characters into file# names containing only lower cases.
LIST="$(ls)"
for name in $LIST; do
    if [[ "$name" != *[[:upper:]]* ]]; then
        continue
    fi
    ORIG="$name"
    echo "O: $ORIG"
    NEW=$(echo $name | tr 'A-Z' 'a-z')
    echo "N: $NEW"
    if [ ! -f "$NEW" ]; then
        mv "$ORIG" "$NEW"
        echo "new name for $ORIG is $NEW"
    else
        echo "$NEW already exists - skipping"
    fi
done
