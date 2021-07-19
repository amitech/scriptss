#!/bin/bash

downTime=0
lastAccessTime=$(date +"%s")
while [ true ]; do
if ! ping -c1 google.com >& /dev/null; then
    downTime=$(( $(date +"%s") - $lastAccessTime ))
else
    downTime=0
    lastAccessTime=$(date +"%s")
fi

sleep 3

if [ $downTime -ge 2 ]; then
   notify-send "Internet down" && date
fi
done
