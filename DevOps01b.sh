#!/bin/bash

if [[ $# -ne 1 ]]; then

	echo "Please specify an option to see specific information. Available options are -volume, -cpu, -ram and -network to see volume, cpu/core, ram and network information repectively."
	exit
elif [[ $1 == "-volume" ]]; then
	
	echo "volume information requested"
	df -h --output='source','target','iused','iavail'
elif [[ $1 == "-cpu" ]] ; then
	echo "cpu information requested"
	lscpu
elif [[ $1 == "-ram" ]] ; then
	echo "ram information requested"
	sudo lshw -short -C memory
elif [[ $1 == "-network" ]] ; then
	echo "network information requested"
	ifconfig
elif [[ $1 == "-all" ]] ; then
	echo "all information requested"
	df -h --output='source','target','iused','iavail'
	lscpu
	sudo lshw -short -C memory
	ifconfig
fi

