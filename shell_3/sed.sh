#! /bin/bash

cat d2.txt | sed -r s'/400/800/'

cat d2.txt | sed -r 's/(400)/(&)/'

cat d2.txt | sed -r 's/([0-9]{3})([0-9]{3})/\1-\2-/'

cat d2.txt | sed -n '3,$p'
