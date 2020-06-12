#!/bin/bash

echo Hello!

h=$(date "+%H")

if [[ $h<0 ]]
then echo time error
elif [[ $h<=11 ]]
then echo good morning!
elif [[ $h<=18 ]]
then echo good afternoon!
else
echo good night!
fi
