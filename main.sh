#!/bin/bash
cd /
if [ -z "$1" ];then
	if [ -z "$2" ];then
		echo "No parameters were selected, please navigate to the help menu using -h parameter"
		exit
	fi
else 
	if [ "$1" = "-h" ];then
		echo -e "Usage:  ./thisfile.sh [-p /path/where/to/search] [-s <string you want to search files for>]"
		exit
	fi
	if [ "$1" = "-p" ];then
		cd "$2"
	fi
	if [ "$1" = "-s" ];then
		template="$2"
	fi
	if [ "$3" = "-s" ];then
		template="$4"
	fi
	if [ "$3" = "-p" ];then
		cd "$4"
	fi
fi
if [ -z "$template" ];then
	echo "no template selected, use -h for more info"
	exit
fi
RD='\033[0;31m'
WH='\033[1;37m'
echo -e "\n${RD}"
echo -e '
  _________  __         .__                 ___________.__            .___            
 /   _____/ /  |________|__| ____    ____   \_   _____/|__| ____    __| _/___________ 
 \_____  \ \   __\_  __ \  |/    \  / ___\   |    __)  |  |/    \  / __ |/ __ \_  __ \
 /        \ |  |  |  | \/  |   |  \/ /_/  >  |     \   |  |   |  \/ /_/ \  ___/|  | \/'
echo -e "/_______  / |__|  |__|  |__|___|  /\___  /   \___  /   |__|___|  /\____ |\___  >__|   
        \/                     \//_____/        \/            \/      \/    \/              ${WH}by jak0ub${RD}"


echo -e "___________________________________________________________________________________${WH}"
grep -rl "$template" . 2>/dev/null | grep -v "$(basename "$0")"
