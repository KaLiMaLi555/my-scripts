#!/bin/bash

exit_with_usage()
{
	echo "set_brightness: invalid option"
	echo "Usage: ./set_brightness.sh [-inc|-dec] [VAL]"
	exit 1
}

MIN_VAL=1000
MAX_VAL=$(cat /sys/class/backlight/intel_backlight/max_brightness)

if [ "$#" -eq 2 ]; then
	if [ "$1" == "-inc" ]; then
		VAL=$(cat /sys/class/backlight/intel_backlight/brightness)
		NEW_VAL=$((VAL+$2))
		if [ $NEW_VAL -ge $MIN_VAL ] && [ $NEW_VAL -le $MAX_VAL ]; then
			echo $NEW_VAL | sudo tee /sys/class/backlight/intel_backlight/brightness
		fi 
	fi
	if [ "$1" == "-dec" ]; then
		VAL=$(cat /sys/class/backlight/intel_backlight/brightness)
		NEW_VAL=$((VAL-$2))
		if [ $NEW_VAL -ge $MIN_VAL ] && [ $NEW_VAL -le $MAX_VAL ]; then
			echo $NEW_VAL | sudo tee /sys/class/backlight/intel_backlight/brightness
		fi
	fi
else
	exit_with_usage
fi
