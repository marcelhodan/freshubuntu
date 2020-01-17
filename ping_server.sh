#!/bin/bash
# example
#SERVERIP=192.168.89.6
SERVERIP=
printf "%s" "waiting for Server '$SERVERIP' ..."
while ! ping -c 1 -n -w 1 "$SERVERIP" &> /dev/null
do
    printf "%c" "."
done
printf "\n%s\n"  "Server is back online"
