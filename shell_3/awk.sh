#! /usr/bin/awk -f

$3 > 15 { X = X + 1 }
END { print X, "employees worked more than 15 hours" }

