#!/bin/bash

while true; do

if [[ "$fileContent" != "$(cat /tmp/rlm_filewrite.txt)" ]] 
then
  kill -s USR1 $(cat /var/log/ices/ices.pid)
  echo "music changed"
fi

fileContent=$(cat /tmp/rlm_filewrite.txt)
sleep 1
done
