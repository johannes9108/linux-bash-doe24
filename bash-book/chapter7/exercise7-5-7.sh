#!/bin/bash
# set -x

remote=joebazooka@192.168.56.101
remoteDir="~/tarBackup"
tarArchive=backup.tar
compressedArchive=backupCompressed.tar
#tar -cf backup.tar log2/
#tar -czf backupCompressed.tar backup.tar
targetDirectory=$PWD/log2/
path=$PWD/$compressedArchive
echo $path

if [ -a $path ];then
    echo "Archive already exists"
    #rm $path  
else
    echo "No Archive"
fi

space=`df -h  | awk '{print $5}' | grep % | grep -v Use | sort -n | tail -1 | cut -d "%" -f1 -`
# echo $space
 case $space in
 [0-9])
  Message="$space<10% Usage"
  ;;
 90)
  Message="Exactly 90% usage"
  ;;
 *)
  Message="Not target at $space"
  ;;
 esac
 echo $Message 