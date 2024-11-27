#!/bin/bash
# set -x
echo '''
Add the following line to /etc/profile
 
if [ $USER == "root" ]; then
    printf "Welcome to the world of Admins"
fi
'''