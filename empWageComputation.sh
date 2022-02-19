#!/bin/bash 

isPresent=$((RANDOM%3))

wage=20

if [ $isPresent -eq 0 ]
then
	echo "Employee is absent";
	workingHour=0;
elif [ $isPresent -eq 1 ]
then
	echo "Employee is present";
	workingHour=8;
else
	echo "Employee is working as part time";
	workingHour=4;
fi

salary=$(($workingHour*$wage))
echo "His Salary for the Day is: " $salary