#!/bin/bash 

echo 'Welcome to Employee Wage Computation Program'

#!/bin/bash 

isPresent=1
randcheck=$((RANDOM%2))
wage=30
isFulltime=$((RANDOM%9))

if [ $isPresent -eq $randcheck ]
then
	salary=$(($wage*$isFulltime))
	echo "He is Present. He gets: " $salary
else
	echo "Absent!! He gets nothing. Lol!"	
fi


#YOLO kjsandkjasnkl