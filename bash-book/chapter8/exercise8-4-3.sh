#!/bin/bash
# set -x
tarArgs=cvp
destination=/var/backups
createBackup() {
    if [ $1 == true ]; then
        echo "Full"
        tar "$tarArgs"f $destination/homeBackup.tar /home/johannes
    else
        echo "Inc"
        tar "$tarArgs"Gf $destination/homeBackup.tar /home/johannes
    fi

    printf "Backup is %s\n" $(du -hs /var/backups/homeBackup.tar | awk '{print $1}')
}

if [ "$#" -eq 0 ]; then
    echo "Lets go"
else
    echo "There are too many arguments"
    exit 1
fi

spaceAvailable=$(df $destination/ | awk '{ if ( NR==2 ) print $4}')
maximumSpaceReq=$(df $HOME | awk '{ if ( NR==2 ) print $3}')
if (("$maximumSpaceReq" <= "$spaceAvailable")); then
    echo $spaceAvailable $maximumSpaceReq
else
    echo "Not enough space"
fi

if [ -f "$destination/homeBackup.tar" ]; then
    printf "Do you want to perform an incremental backup? "
    read incremental

    if [[ "$incremental" =~ ^(y|yes|YES|Y|Yes|YeS|yEs|yeS|YEs|yES)$ ]]; then
        echo "+"
        find $destination/ -ctime -7 -iname homeBackup | grep .

        if [ "$?" == 0 ]; then
            echo "Creating Incremental backup"
            createBackup false
        else
            echo "Current backup is too old!!"
            createBackup true
        fi
    fi
    createBackup true
else
    echo "Creating a full backup"
    createBackup true
fi

# if [ -f "$1" ]; then
#     printf "Which program do you want to use for compression?\n"
#     cat <<CHOICES
# gzip
# bzip2
# zip
# CHOICES
#     read choice

#     case $choice in
#     gzip | bzip2) $choice -k $1 ;;
#     zip) $choice "$1.zip" $1 ;;
#     *) printf "Not a proper choice!\n" ;;
#     esac

# else
#     printf "File $1 cannot be found\n"
# fi
