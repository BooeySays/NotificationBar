#!/bin/bash

function GetNotThemeBG(){
	if [ $ThemeBGSelect ]; then
		unset ThemeBGSelect
	fi
	if [ $NotThemeBG ]; then
		unset NotThemeBG
	fi
	clear
	echo -e """
	Please choose a color for the notification bar:

	1) \033[40m\033[01;07;31m RED \033[m
	2) \033[40m\033[01;07;32m GREEN \033[m
	3) \033[40m\033[01;07;33m YELLOW \033[m
	4) \033[40m\033[01;07;34m BLUE \033[m
	5) \033[40m\033[01;07;35m PINK \033[m
	6) \033[40m\033[01;07;36m AQUA \033[m
	7) \033[40m\033[01;07;37m WHITE \033[m
	8) \033[40m\033[01;07;30m GREY \033[m

	: """
	read -n 1 -r ThemeBGSelect
	case $ThemeBGSelect in
	1)
		NotThemeBG="\\033[01;07;31m"
		;;
	2)
		NotThemeBG="\\033[01;07;32m"
		;;
	3)
		NotThemeBG="\\033[01;07;33m"
		;;
	4)
		NotThemeBG="\\033[01;07;34m"
		;;
	5)
		NotThemeBG="\\033[01;07;35m"
		;;
	6)
		NotThemeBG="\\033[01;07;36m"
		;;
	7)
		NotThemeBG="\\033[01;07;37m"
		;;
	8)
		NotThemeBG="\\033[01;07;30m"
		;;
	*)
		echo -e "Invalid choice"
		;;
	esac
}

## FG

function GetNotThemeFG(){
	if [ $ThemeFGSelect ]; then
		unset ThemeFGSelect
	fi
	if [ $NotThemeFG ]; then
		unset NotThemeFG
	fi
	clear
	echo -e """
	Please choose a color for the font:

	1) \033[41m\033[07;30m RED \033[m
	2) \033[42m\033[07;30m GREEN \033[m
	3) \033[43m\033[07;30m YELLOW \033[m
	4) \033[44m\033[07;30m BLUE \033[m
	5) \033[45m\033[07;30m PINK \033[m
	6) \033[46m\033[07;30m AQUA \033[m
	7) \033[47m\033[07;30m WHITE \033[m
	8) \033[01;40m\033[07;30m GREY \033[m

	: """
	read -n 1 -r ThemeFGSelect
	case $ThemeFGSelect in
	1)
		NotThemeFG="\\033[41m"
		;;
	2)
		NotThemeFG="\\033[42m"
		;;
	3)
		NotThemeFG="\\033[43m"
		;;
	4)
		NotThemeFG="\\033[44m"
		;;
	5)
		NotThemeFG="\\033[45m"
		;;
	6)
		NotThemeFG="\\033[46m"
		;;
	7)
		NotThemeFG="\\033[47m"
		;;
	8)
		NotThemeFG="\\033[01;40m"
		;;
	*)
		echo -e "Invalid choice"
		;;
	esac
}
function previewnot(){
	echo -e "$NotThemeFG$NotThemeBG This is your notification bar preview \033[m"
}

GetNotThemeBG
GetNotThemeFG
previewnot