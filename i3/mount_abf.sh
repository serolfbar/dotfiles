#!/usr/bin/env bash

if lsblk | grep sda
then
	# check if /run/media/alexander exists
	if [ ! -d "/run/media/alexander/" ]
	then 
		mkdir /run/media/alexander;
		echo "run/media/alexander was created";
	fi

	if [ ! -d "/run/media/alexander/ABF" ]
	then 
		mkdir /run/media/alexander/ABF;
		echo "run/media/alexander/ABF was created";
	fi

	mount /dev/sda1 /run/media/alexander/ABF;
else 
	echo "External drive was not found";
fi
