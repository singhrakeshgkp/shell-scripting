#!/usr/bin/env
salary=2000
#if [ "$salary" -gt 20000 ] && [ "$salary" -lt 40000 ]   # approach 1 for using "and" operator
if [ "$salary" -gt 20000 -a "$salary" -lt 40000 ]  # approach 2 for using "and" operator
then
    echo "salary is between 20 and 40 k"
else
    echo "salary is not between 20 and 40k"
fi