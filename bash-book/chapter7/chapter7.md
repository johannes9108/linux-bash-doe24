# Chapter 7 Condtitional Statements
### Exercise 1
Use an if/then/elif/else construct that prints information about the current month. The script should print the number of days in this month, and give information about leap years if the current month is February. [Exercise 1](exercise7-5-1.sh)
### Exercise 2
Do the same, using a case statement and an alternative use of the date command. [Exercise 2](exercise7-5-2.sh)
### Exercise 3
Modify /etc/profile so that you get a special greeting message when you connect to your system as root. [Exercise 3](exercise7-5-3.sh)
### Exercise 4
Edit the leaptest.sh script from Section 7.2.4 so that it requires one argument, the year. Test that exactly one argument is supplied. [Exercise 4](exercise7-5-4.sh)
### Exercise 5
Write a script called whichdaemon.sh that checks if the httpd and init daemons are running on
 your system. If an httpd is running, the script should print a message like, "This machine is running a
 web server." Use ps to check on processes. [Exercise 5](exercise7-5-5.sh)
### Exercise 6
Write a script that makes a backup of your home directory on a remote machine using scp. The script should report in a log file, for instance ~/log/homebackup.log. If you don't have a second machine to copy the backup to, use scp to test copying it to the localhost. This requires SSH keys between the two hosts, or else you have to supply a password. The creation of SSH keys is explained in man ssh-keygen. [Exercise 6](exercise7-5-6.sh)
### Exercise 7
Adapt the script from the first example in Section 7.3.1 to include the case of exactly 90% disk space usage, and lower than 10% disk space usage.
 The script should use tar cf for the creation of the backup and gzip or bzip2 for compressing the .tar file. Put all filenames in variables. Put the name of the remote server and the remote directory in a variable. This will make it easier to re-use the script or to make changes to it in the future.
 The script should check for the existence of a compressed archive. If this exists, remove it first in order to prevent output generation.
 The script should also check for available diskspace. Keep in mind that at any given moment you could have the data in your home directory, the data in the .tar file and the data in the compressed archive all together on your disk. If there is not enough diskspace, exit with an error message in the
 log file. The script should clean up the compressed archive before it exits [Exercise 7](exercise7-5-7.sh)