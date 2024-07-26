#! /bin/bash

echo - - - USER STAT - - -

echo Kernel version: $(uname -r)

echo Date: $(date +"%d.%m.%Y")

echo Time: $(date +"%T")

echo Current user: $(whoami)

echo Current IP: $(ifconfig eth0 | grep 'inet ' | awk '{print $2}')

echo Work time: $(uptime -p | awk -F'up ' '{print$2}')

echo Current directory: $(pwd)

echo -e "Accessible files:\n$(ls)"
