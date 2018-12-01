#!/bin/sh

# Author: José Edgardo Morales Barroso
# Description: Tool to launch n process in parallel


if [ $# -lt 2 ]
then
  echo -e "\nUsage:\n\t jemProcessLauncher.sh <number-of-process-to-run> <process-to-run> \n"
  echo -e "Examples:\n\t ./jemProcessLauncher.sh 4 proceso.sh"
  echo -e "\t ./jemProcessLauncher.sh 4 \"p.sh 2\""
  echo -e "\t ./jemProcessLauncher.sh 4 \"p.sh 2\" > info.out\n"
  exit 0
fi

n=0
echo Launching $1 times the $2 process in parallel

while [ $n -lt $1 ]
do
  n=`expr $n + 1`
  echo Launching $n: $2 
  $2 &
done