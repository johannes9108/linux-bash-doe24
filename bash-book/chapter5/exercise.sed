#!/user/bin/sed -E

#/[[:alnum:]]/p

s/[[:space:]]\+$/ WS-ALERT/
#s/[[:space:]]\{1,\}$/ WS-ALERT/
