#!/bin/bash
chapter=$(grep -Eo "[[:digit:]]*$" <<< $PWD)
echo "Exercises for chapter $chapter" 
divider="-------------------------------"

echo "Print a list of files in your scripts directory, ending in ".sh". Mind that you might have to unalias
 ls. Put the result in a temporary file."
ls -la $PWD/scripts/ | sed -En '/.sh$/wres1.log' 

echo $divider

echo "Make a list of files in /usr/bin that have the letter "a" as the second character. Put the result in a
 temporary file."
ls /usr/bin/ | sed -En '/^.a.*/wres2.log'

echo $divider

echo "Delete the first 3 lines of each temporary file."
sed -Ei.backup '1,3d' res1.log
sed -Ei.backup '1,3d' res2.log

echo "Print to standard output only the lines containing the pattern "an"."
ls /usr/bin | sed -En '/an/p'
echo $divider

echo "Create a file holding sed commands to perform the previous two tasks. Add an extra command to this
 file that adds a string like "*** This might have something to do with man and man pages ***" in the
 line preceding every occurence of the string "man". Check the results."
ls /usr/bin | sed -En '/an/p' | sed -E '/man/i\*** This might have something to do with man and man pages ***'

echo $divider
echo "A  long listing of the root directory, /, is used for input. Create a file holding sed commands that
 check for symbolic links and plain files. If a file is a symbolic link, precede it with a line like --This
 is a symlink--. If the file is a plain file, add a string on the same line, adding a comment like <--
this is a plain file."
ls / | sed -Ee '/^l/i\--This is a symlink--' -Ee 's/^-.*/& <--- this is a plain file/'

echo $divider

echo "Create a script that shows lines containing trailing white spaces from a file. This script should use a
 sed script and show sensible information to the user."
cat trailingSpaces.txt | sed -f exercise.sed

