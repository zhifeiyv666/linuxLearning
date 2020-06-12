#!/bin/bash


if [[ $#<=1 ]]
then
	file=p1.sh
else
	file=$1
fi

if [ -f ${file} ]
then
	read -p "run the ${file}?[y/n]" run
	if [[ ${run} =~ [yY]|[yY][eE][sS] ]]
	then
		if [ -x ${file} ]
		then ./${file}
		else echo "file ${file} exist, but not executable file!"
		fi
	fi
else 
	echo "file ${file} not exist! please create it first!"	

fi
