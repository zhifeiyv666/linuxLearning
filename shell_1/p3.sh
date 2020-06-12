#!/bin/bash

func_print(){
	for((i=1;i<=9;i++))
	do
		for((j=1;j<=$i;j++))
		do echo -n -e "\t$i * $j = $[ i*j ]"
		done
		echo ""
	done
}

if (( $#<1 ))
then func_print
else func_print >> $1
fi
