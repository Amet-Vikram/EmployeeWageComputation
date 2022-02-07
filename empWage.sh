#!/bin/bash 

isPresent=1
randcheck=$((RANDOM%2))
wage=30
isFulltime=$((RANDOM%9))
if [ $isPresent -eq $randcheck ]
then
	echo "Present"
	salary=$(($wage*$isFulltime))
	echo "He gets: " $salary
else
	echo "Absent!! He gets nothing. Lol!"	
fi

