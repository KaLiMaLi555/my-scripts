#!/bin/bash

exit_with_usage()
{
	echo "set_wall: invalid option"
	echo "Usage: ./set_wall.sh [home|lock] [IMAGEPATH]"
	exit 1
}

if [ "$#" -eq 2 ]; then
	MODE=$1
	IMAGEPATH=$2
	if [ "$MODE" == "home" ]; then
		rm ~/.home_wallpaper
		ln -s $IMAGEPATH ~/.home_wallpaper
		feh --bg-fill ~/.home_wallpaper
	fi
	if [ "$MODE" == "lock" ]; then
		rm ~/.lock_wallpaper
		ln -s $IMAGEPATH ~/.lock_wallpaper
	fi
	else
		exit_with_usage
fi