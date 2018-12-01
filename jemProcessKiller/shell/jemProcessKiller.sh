#!/bin/bash

# Author: José Edgardo Morales Barroso
# Description: Tool to kill the n instances of the process running in parallel

if [ "$1" == "" ]
then
  echo -e "\nUsage:\n\t jemProcessKiller.sh <process-to-kill> \n"
  echo -e "Example:\n\t ./jemProcessKiller.sh proceso.sh\n"
  exit 0
fi

echo Search for Process: $1
PIDS=`ps -fea | grep "$1" | grep -v grep | grep -v jemProcessKiller | awk '{print $2}'`

echo Process to kill: 
echo -n "$PIDS" |  grep -c '^'

echo ----------------------------------
ps -fea | grep "$1" | grep -v grep | grep -v jemProcessKiller
echo ----------------------------------

for PID in $PIDS
do
  echo killing: $PID
  kill -9 $PID
done
