#!/usr/bin/env
num1=21
num2=2;

# Approach 1

echo "Approach 1  ============="
echo
echo $(( num1 + num2 ))
echo $(( num1 - num2 ))
echo $(( num1 / num2 ))
echo $(( num1 % num2 ))

# approach 2

echo "Approach 2 ==============="

echo
echo $(expr $num1 + $num2 )
echo $(expr $num1 - $num2 )
echo $(expr $num1 / $num2 )
echo $(expr $num1 % $num2 )