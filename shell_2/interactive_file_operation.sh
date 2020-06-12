#!/bin/bash

dir(){
	ls
}

mycd(){
	read -p "the target directory to enter:" target
	if [ -d ${target} ]
	then cd ${target}
	else echo "directory doesn't exist!"
	fi
}

wcd(){
	pwd
}

create() {
	read -p "the file name to create:" file
	if [ ! -f ${file} ]
	then touch ${file}
	else echo "file is already exist!"
	fi
}

delete(){
	read -p "the file name to delete:" file
	if [ -f ${file} ] ; then
	rm ${file}
	else echo "file is not exist!"
	fi
}

rename(){
	read -p "the old file:" old
	if [ -f ${old} ] ; then
		read -p "the new name:" new
		if [ -f ${new} ] ; then
		echo "the file already exist!"
		else mv ${old} ${new}
		fi
	fi
}

newdir(){
	read -p "the directory to create:" directory
	if [ -d ${directory} ] ; then
	echo "the directory is already exist!"
	else mkdir -p ${directory}
	fi
}

deldir(){
	read -p "the directory to delete:" directory
	if [ -d ${directory} ] ; then
	rm -rf ${directory}
	else echo "the directory is not exist!"
	fi
}
IFS="|"
ops="dir|cd|wcd|create|delete|rename|newdir|deldir|exit"
select s in ${ops}
do
case $s in
	dir) dir ;;
	cd) mycd ;;
	wcd) wcd ;;
	create) create ;;
	delete) delete ;;
	rename) rename ;;
	newdir) newdir ;;
	deldir) deldir ;;
	exit) exit 0 ;;
	*) echo " error choose!"
esac
done
