#!/bin/bash 

isFullTime=1
isPartTime=2

wage=30
hrs=0
totalSalary=0
maxworkingday=20

for (( days=1; days<=$maxworkingday; days++ ))
# Case Statement
do
	randcheck=$((RANDOM%3))

	case $randcheck in 
		$isFullTime) emphrs=8
						;;
		$isPartTime) emphrs=4
						;;
					 *) emphrs=0
						;;
	esac 
	hrs=$(($hrs+$emphrs))
	salary=$(($wage*$emphrs))
	totalSalary=$(($totalSalary+$salary))
done

echo "Hours Worked: " $hrs
echo "Monthly Salary is: " $totalSalary
#if [ $isPresent -eq $randcheck ]
#then
#	echo Present
#	salary=$(($wage*$isFulltime))
#	echo He gets:  $salary
#else
#	echo Absent!! He gets nothing. Lol!	
#fi

