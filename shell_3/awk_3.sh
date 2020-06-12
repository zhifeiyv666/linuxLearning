#! /usr/bin/awk -f

BEGIN {
	FS="[:]"
}

$7 == "/sbin/nologin" {
	X = X + 1
}

END {
	print X, "/sbin/nologin"
}
