#!/bin/bash
set -x

function checkService() {
    service=$1
    firstChar=$(echo $service | cut -c-1)
    rest=$(echo $service | cut -c2-)
    # printf "FC = %s, Rest =%s\n" $firstChar $rest
    grepFriendly=$(echo "[$firstChar]$rest")
    # echo $grepFriendly
    ps aux | grep -q $grepFriendly
    if [ $? == 0 ]; then
        printf "$service is running\n"
        return 0
    else
        printf "$service is NOT running\n"
        return 1
    fi
}

filename=./servicesList
# commands=($(cat ./servicesList))
readarray -t lines <"$filename"
commands=$(echo "${lines[@]}")

echo $commands
select choice in $commands "quit"; do
    case $choice in
    "ntp")
        echo "Selected ntp"

        ;;
    "init")
        echo "Selected init"
        if checkService $choice; then
        fi
        ;;
    "openssh-server")
        echo "Selected openssh-server"

        ;;
    "httpd")
        echo "Selected httpd"

        ;;
    "dnsmasq")
        echo "Selected dnsmasq"

        ;;
    "quit") break ;;
    *)
        echo "Invalid choice"

        ;;

    esac

done

for command in $commands; do
    checkService $command
done
