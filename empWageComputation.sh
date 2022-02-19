#!/bin/bash 

isPresent=$((RANDOM%3))
wage=20
isFullTime=1
isPartTime=2
randcheck=$((RANDOM%3))
wage=30
# Case Statement
case $randcheck in 
	$isFullTime) 
				echo "Employee is present"
				emphrs=8
					;;
	$isPartTime) 
				echo "Employee is working as part time"
				emphrs=4
					;;
			*) 
				echo "Employee is absent"
				emphrs=0
					;;
esac 

salary=$(($wage*$emphrs))
echo "His Salary for the Day is: " $salary
