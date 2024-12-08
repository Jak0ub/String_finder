#!/bin/bash
cd /
if [ -z $1 ];then
	echo "No parameters were selected, running default settings..."
else 
	if [ "$1" = "-h" ];then
		echo -e "Usage:  ./thisfile.sh [-p /path/where/to/search]"
		exit
	fi
	if [ "$1" = "-p" ];then
		cd "$2"
	fi
fi
RD='\033[0;31m'
RD2='\033[1;31m'
WH='\033[1;37m'
echo -e "\n${RD}___  ____ _ _  _ ____ ___ ____ ____ ____ _  _    \n|__] |__/ | |  | |__|  |  |___ [__  [__  |__|    \n|    |  \ |  \/  |  |  |  |___ ___] ___] |  |    ${WH}by jak0ub${RD2}"
echo -e "_____________________________________________${WH}"
grep -rl 'BEGIN OPENSSH PRIVATE KEY' . 2>/dev/null | grep -v "$(basename "$0")"
