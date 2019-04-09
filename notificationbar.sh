#!/bin/bash

	################# Copyright 2019 - DX2 Digital Media Group #################
	#
	# DATE: 2019-01-10_2330
	# FILE: notificationbar.sh
	# LANG: BASH
	# DESC:	Draws a colored bar accross the screen to be
	#	used as a notification bar or some hit like
	#	that
	# FUNC: NA
	# EXEC: 
	#
	#	. notificationbar.sh
	#
	# XTRA: NA
	#
	################# Copyright 2019 - DX2 Digital Media Group #################

function errorcode_return(){
	RETVAL=$?
	if [ $RETVAL -ne 0 ]; then
		echo -e "\033[01;37m[\033[31m$RETVAL\033[37m] \033[m"
		unset RETVAL
	else
		echo -e "\033[01;37m[\033[32m$RETVAL\033[37m] \033[m"
		unset RETVAL

	fi
}

function notificationbar(){
	tput sc
	tput cup 0,0
	screenswidth=$(tput cols);
	if [ $screenswidth == "1" ]; then
		echo -en "\033[43m \033[m";
		echo -e "\r\033[30m HELLO ";
	fi
	while [ $screenswidth -gt 0 ]; do
		printf  "\033[46m \033[m";
#		echo -en "\033[46m \033[m";
		((screenswidth -=1));
	done
	tput cup 0,0
	echo -en "\033[01;46m $(date) \033[m"
	echo -en "$(notificationbar)"
	tput rc
unset screenswith;
}

ps1=$PS1
export PS1="\`notificationbar\`\n$ps1"
#tput sc; tput cols 0,0; notificationbar; tput rc