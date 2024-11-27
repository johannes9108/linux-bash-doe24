#!/bin/bash
set -x


function checkService{
	service=$1
	echo $service

	# if [ $(ps aux | grep "[i]nit") ]; then
	# 	printf "Init is running"
	# fi
}

checkService init
