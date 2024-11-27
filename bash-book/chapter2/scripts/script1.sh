#!/bin/bash
echo "Hello, running my first script"
echo "Creating 10 files"
touch file{1..10}.txt
echo "Removing file 2,3,7" 
rm file[2,3,7].txt
ls -la
