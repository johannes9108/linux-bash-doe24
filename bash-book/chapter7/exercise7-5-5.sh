#!/bin/bash
# set -x

commands=(init httpd)

function checkService(){
	service=$1
	firstChar=$(echo $service | cut -c-1)
    rest=$(echo $service | cut -c2-)
    # printf "FC = %s, Rest =%s\n" $firstChar $rest
    grepFriendly=$(echo "[$firstChar]$rest")
    # echo $grepFriendly
    ps aux | grep -q $grepFriendly
	if [ $? == 0 ]; then
		printf "$service is running\n"
	else
		printf "$service is NOT running\n"
    fi
}

for command in "${commands[@]}"
do
	checkService $command
done

