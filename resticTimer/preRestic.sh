#!/bin/bash
# set -x
if [ -d "$RESTIC_REPOSITORY" ]; then
    echo "Rest Repo already initiated"
else
    echo "Running restic init"
    restic init
fi