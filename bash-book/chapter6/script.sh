#!/bin/bash

#duRes=$(du -hd 1  /home/)
#sortRes=$(sort -r <<< $duRes)
#awkRes=$(awk '/[a-z]$/ {print $1,$2}' <<< $sortRes) 
#headRes=$(head -n 3 <<< $awkRes)
du -hd 1  /home/ | sort -r | awk '/[a-z]$/ {print $1,$2}' | head -n 3
