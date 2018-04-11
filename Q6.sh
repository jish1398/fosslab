#!/bin/bash\
clear
sum=0
i="y"
echo "Enter the first no:"
read n1
echo "Enter the second no:"
read n2
while [ $i = "y" ]
do
echo "1.Addition"
echo "2.Subtraction"
echo "3.Multiplication"
echo "4.Division"
read ch
case $ch in
	1)sum=`expr $n1 + $n2`
		echo "sum="$sum;;
	2)sum=`expr $n1 - $n2`
		echo "Sub="$sum;;
	3)sum=`expr $n2 \* $n1`
		echo "mul="$sum;;
	4)sum=`expr $n2 / $n1`
		echo "div="$sum;;
	*)echo "Invalid Choice"
	esac
echo "Do you want to continue(y/n):"
read i

if [ $i != "y" ]
then
	exit
fi
	done




