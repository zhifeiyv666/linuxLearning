#! /usr/bin/awk -f

BEGIN {
	FS="[:]"
}

$1 ~/.*g.*/ {
	print $1, $3
}
