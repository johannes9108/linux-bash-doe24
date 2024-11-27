#!/bin/bash
set -x

filename='backup-'$(date '+%X_%x' )
script -qefc "scp -r -P 22 $PWD/backupfolder/ joebazooka@192.168.56.101:~/backupfolder/" | tee $PWD/log/backup
