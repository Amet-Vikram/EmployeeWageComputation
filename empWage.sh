#!/bin/bash 

isPresent=1
randcheck=$((RANDOM%2))
if [$isPresent eq $randcheck]
then
	echo "Present"
else
	echo "Absent!"
fi

