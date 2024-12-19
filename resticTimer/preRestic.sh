#!/bin/bash
# set -x
restic check -r "$RESTIC_REPOSITORY" &> /dev/null 
# set +x

if [ "$?" == 0 ]; then
    echo "Rest Repo already initiated"
else
    echo "Running restic init"
    restic -r sftp://joebazooka@192.168.56.101/remote init
fi