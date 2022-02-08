#!/bin/bash 

isFullTime=1
isPartTime=2
randcheck=$((RANDOM%3))
wage=30
# Case Statement
case $randcheck in 
	$isFullTime) emphrs=8
					;;
	$isPartTime) emphrs=4
					;;
				 *) emphrs=0
					;;
esac 

salary=$(($wage*$emphrs))
echo $salary
#if [ $isPresent -eq $randcheck ]
#then
#	echo Present
#	salary=$(($wage*$isFulltime))
#	echo He gets:  $salary
#else
#	echo Absent!! He gets nothing. Lol!	
#fi

