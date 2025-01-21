#!/usr/bin/bash
addition()
{
m=$1
n=$2
sum=$((m+n))
echo "The sum is : ${sum}"
}

subtraction()
{
o=$1
p=$2
sub=$((o-p))
echo "The difference is : ${sub}"
}

multiplication()
{
q=$1
r=$2
mul=$((q*r))
echo "The product is : ${mul}"
}

division()
{
s=$1
t=$2
div=$((s/t))
echo "The quotient is : ${div}"
}
clear
echo "================================================================"
echo "================================================================"
echo "Welcome to Kc Calculator, I hope you enjoy using this tool"
echo "Version 1.0.0"
echo "Author: Kelechi"
echo "Year Developed : 2025"
echo "================================================================"
echo "================================================================"

#reads user digits for operation

read -p "Type in Your first Operand and hit Enter: " operand1
read -p "Type in Your second Operand and hit Enter: " operand2

#select operation type

echo "================================================================"
echo "Select Desired Arithmetic OPeration"
echo -e "a-addition\ns-subtraction\nd-division\nm-multiplication"
echo "================================================================"

read -p "Type in Your desired operation and hit Enter: " operation_type


case ${operation_type} in 
	

	a) echo "Your operation is addition"
	  addition operand1 operand2 #calls the addition function.
	  ;;

	s) echo "Your operation is subtraction"
	  subtraction operand1 operand2 #calls the subtration function.
	  ;;
	  
	d) echo "Your operation is division"
	  division operand1 operand2 #calls the division function.
	  ;;
	  
        m) echo "Your operation is multiplication"
	  multiplication operand1 operand2 #calls the multiplication function.
	  ;;
	  
        *) echo "Invalid selection  ------> exiting"
		;;
	
esac
