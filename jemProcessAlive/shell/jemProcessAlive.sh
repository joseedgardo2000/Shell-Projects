#!/bin/bash

# Author: José Edgardo Morales Barroso
# Description: Tool to verify the n instances of the process running in parallel

if [ "$1" == "" ]
then
  echo -e "\nUsage:\n\t jemProcessAlive.sh <process-to-verify> \n"
  echo -e "Example:\n\t ./jemProcessAlive.sh proceso.sh\n"
  exit 0
fi

echo Search for Process: $1
PIDS=`ps -fea | grep "$1" | grep -v grep | grep -v jemProcessAlive | awk '{print $2}'`

echo Living Process: 
echo -n "$PIDS" |  grep -c '^'

echo ----------------------------------
ps -fea | grep "$1" | grep -v grep | grep -v jemProcessAlive
echo ----------------------------------
