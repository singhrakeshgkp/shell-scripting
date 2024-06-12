#!/usr/bin/env
num1=21.5
num2=2;

echo "10.5+2" | bc       # syntax in left hand side of | bc will be treated as input here.
echo "10.5-2" | bc 
echo "10.5*2" | bc 
echo "10.5/2" | bc    # this will not return value in decimal, to fix that we will use scale
echo "scale=2;10.5/2" | bc  # scale=2 will print the value up to two decimal places
echo "10.5%2" | bc 

echo "Using variables to perform decimal operations"

echo "$num1+$num2" | bc

 # apart from arithmetic operations using bc we can perform math operations as well such as squire root, power etc.

echo "Performing math operations"
 num3=4;

echo "scale=2;sqrt($num3)" | bc  -l  # here we are performing math operation, alone bc will not be sufficient we need to include the library wehre sqrt fun available for that we used -l
echo "scale=2;$num3^2" | bc  -l # -l used to include library math functions exists.