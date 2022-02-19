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
declare -A dailyWage

function getWorkinghr() {
	case $1 in
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
	echo $emphrs
}

function getEmpWagePerDay(){
	echo $(($1 * $wage))
}

while [ $totalWorkinghrs -le $maxWorkinghrs ] && [ $totalWorkingdays -lt $maxworkingday ]
do
	((totalWorkingdays++))
	randcheck=$((RANDOM%3))
	emphrs=$( getWorkinghr $randcheck )
	totalWorkinghrs=$(($totalWorkinghrs+$emphrs))
	salary=$(($wage*$emphrs))
	totalSalary=$(($totalSalary+$salary))
	dailyWage["Day "$totalWorkingdays]=$( getEmpWagePerDay $emphrs )
done

for ((day=1;day<=20;day++))
do 
	echo Day$day : ${dailyWage[Day $day]}
done

echo "Hours Worked: " $totalWorkinghrs
echo "Monthly Salary is: " $totalSalary
