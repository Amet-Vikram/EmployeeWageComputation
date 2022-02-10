#!/bin/bash 

isFullTime=1
isPartTime=2

wage=30
totalWorkinghrs=0
totalSalary=0
maxworkingday=20
maxWorkinghrs=100
totalWorkingdays=0
#for (( days=1; days<=$maxworkingday; days++ ))
# Case Statement

function getWorkinghr() {

	case $1 in
   	   $isFullTime) emphrs=8
   	               ;;
	      $isPartTime) emphrs=4
         	         ;;
      	          *) emphrs=0
            	      ;;
	esac
	echo $emphrs
}

function getEmpWagePerDay(){
	echo $(($1 * $wage))
}

while [[ $totalWorkinghrs -lt $maxWorkinghrs && $totalWorkingdays -le $maxworkingday ]]
do
	((totalWorkingdays++))
	randcheck=$((RANDOM%3))

	emphrs=$( getWorkinghr $randcheck )
	totalWorkinghrs=$(($totalWorkinghrs+$emphrs))
	salary=$(($wage*$emphrs))
	totalSalary=$(($totalSalary+$salary))
	dailyWage[$totalWorkingdays]=$( getEmpWagePerDay $emphrs )
done

echo "Hours Worked: " $totalWorkinghrs
echo "Monthly Salary is: " $totalSalary
echo "Daily Wage: " ${dailyWage[@]}

#if [ $isPresent -eq $randcheck ]
#then
#	echo Present
#	salary=$(($wage*$isFulltime))
#	echo He gets:  $salary
#else
#	echo Absent!! He gets nothing. Lol!	
#fi

