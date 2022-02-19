#!/bin/bash 

isPresent=$((RANDOM%3))
wage=20
isFullTime=1
isPartTime=2
wage=20
totalWorkinghrs=0
maxWorkinghrs=100
totalWorkingdays=0
maxworkingday=20

while [ $totalWorkinghrs -le $maxWorkinghrs ] && [ $totalWorkingdays -lt $maxworkingday ]
do
	((totalWorkingdays++))
	randcheck=$((RANDOM%3))
	case $randcheck in 
		$isFullTime) 
					
					emphrs=8
						;;
		$isPartTime) 
					
					emphrs=4
						;;
		*) 
					
					emphrs=0
						;;
	esac 
	totalWorkinghrs=$(($totalWorkinghrs+$emphrs))
	salary=$(($wage*$emphrs))
	totalSalary=$(($totalSalary+$salary))
done
echo "Hours Worked: " $totalWorkinghrs
echo "Monthly Salary is: " $totalSalary
