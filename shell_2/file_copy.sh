#!/bin/bash

if (( $# < 2 ))
then echo "at least need 2 paramentes!" && exit 1
fi

target_dir=$1

# check out if the target directory exist or not, if not ,create it.
if [ ! -d ${target_dir} ]
then mkdir -p ${target_dir}
fi

# copy file
total=$(( $# - 1 ))
success=0
fail=0
for(( i=2; i<=$#; i++ ))
do
	cur_file=${!i}
	if [ -f ${cur_file} ]
	then 
		if cp ${cur_file} "${target_dir}/${cur_file}"
		then
			(( success++ )) 
			echo "copy ${cur_file} to ${target_dir} successed!"
		fi

	else
		echo "the file ${cur_file} doesn't exist!"
		(( fail++ ))
	fi
done
echo "copy finished."
echo "total: ${total}"
echo "success: ${success}"
echo "fail: ${fail}"
