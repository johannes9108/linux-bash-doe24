#!/bin/bash

#set -x

echo "Display a list of all the users on your system who log in with the Bash shell as a default."

divider="--------------------"
#tmp="-" 
#for i in {1..10};
#do
#done;

grep -E "bash$" "/etc/passwd"

echo "$divider"

echo "From the /etc/group directory, display all lines starting with the string "daemon"."
grep -E "^daemon" /etc/group

echo "$divider"
echo "Print all the lines from the same file that don't contain the string."
grep -v "daemon" /etc/group

echo "$divider"
echo "Display localhost information from the /etc/hosts file, display the line number(s) matching the
 search string and count the number of occurrences of the string."
grep -n "localhost" /etc/hosts && grep -c "localhost" /etc/hosts

echo "$divider"
# echo "" | awk -v output=$(print `grep -n localhost /etc/hosts`) '{print "test"}

echo "Display a list of /usr/share/doc subdirectories containing information about shells."
ls /usr/share/doc/ | grep "\.*sh$\|\.*sh-\.*" | grep -v "ssh\|lib"

echo "$divider"
echo "How many README files do these subdirectories contain? Don't count anything in the form of
 "README.a_string"."
 ls /usr/share/doc/ | grep "\.*sh$\|\.*sh-\.*" | grep -v "ssh\|lib" | xargs -I {} ls "/usr/share/doc/{}" | grep -c README*

echo "$divider"
 echo "Make a list of files in your home directory that were changed less that 10 hours ago, using grep, but
 leave out directories."
 ls -lt --time-style=+%s | awk -v now=$(date +%s) -v cutoff=$((10 * 3600)) '$6 > now - cutoff {print $7}'
 
echo "$divider"

echo "Can you find an alternative for wc -l, using grep?"
ls -l | grep -c "regex"

echo "$divider"
echo "Using the file system table (/etc/fstab for instance), list local disk devices."

ls -la /dev/ | grep -E "disk|sda"
cat /etc/fstab
fdisk -l

echo "$divider"

