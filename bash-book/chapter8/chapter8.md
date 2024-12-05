# Exercises

## Exercise 1
Write a script that asks for the user's age. If it is equal to or higher than 16, print a message saying that
this user is allowed to drink alcohol. If the user's age is below 16, print a message telling the user how
many years he or she has to wait before legally being allowed to drink. As an extra, calculate how much beer an 18+ user has drunk statistically (100 liters/year) and print this information for the user. [Exercise 1](exercise8-4-1.sh)

## Exercise 2 
Write a script that takes one file as an argument. Use a here document that presents the user with a
couple of choices for compressing the file. Possible choices could be gzip, bzip2, compress and zip.
[Exercise 2](exercise8-4-2.sh)

## Exercise 3
Write a script called homebackup that automates tar so the person executing the script always uses
the desired options (cvp) and backup destination directory (/var/backups) to make a backup of
his or her home directory. Implement the following features:
* Test for the number of arguments. The script should run without arguments. If any arguments
are present, exit after printing a usage message.
* Determine whether the backups directory has enough free space to hold the backup.
* Ask the user whether a full or an incremental backup is wanted. If the user does not have a
full backup file yet, print a message that a full backup will be taken. In case of an incremental
backup, only do this if the full backup is not older than a week
* Compress the backup using any compression tool. Inform the user that the script is doing this,
because it might take some time, during which the user might start worrying if no output appears on the screen.
* Print a message informing the user about the size of the compressed backup.
See `info tar` or Introduction to Linux, chapter 9: "Preparing your data" for background information.
[Exercise 3](exercise8-4-3.sh)

## Exercise 4
Write a script called simple-useradd.sh that adds a local user to the system. This script should:
* Take only one argument, or else exit after printing a usage message.
* Check /etc/passwd and decide on the first free user ID. Print a message containing this ID.
* Create a private group for this user, checking the /etc/group file. Print a message containing the group ID.
* Gather information from the operator user: a comment describing this user, choice from a list of shells (test for acceptability, else exit printing a message), expiration date for this account, extra groups of which the new user should be a member.
* With the obtained information, add a line to `/etc/passwd`, `/etc/group` and
 `/etc/shadow`; create the user's home directory (with correct permissions!); add the user to the desired secondary groups.
 Set the password for this user to a default known string.
[Exercise 4](exercise8-4-4.sh)

## Exercise 5
Rewrite the script from Section 7.2.1.4 so that it reads input from the user instead of taking it from the first argument.
[Exercise 5](exercise8-4-5.sh)