#!/usr/bin/env
salary=2500
#if [ "$salary" -eq 25000 ] || [ $salary -eq 40000 ]   # approach 1 for using "and" operator
if [ "$salary" -eq 25000 -o "$salary" -eq 40000 ]  # approach 2 for using "and" operator
then
    echo "salary is  25k OR 40 k"
else
    echo "salary is not  25k OR  40k"
fi