#!/usr/bin/env
age=25
if [ $age -gt 30 ]
then
echo "age is greater than 30  which is true"
elif [ $age -gt 20 ]
then
echo "age is greater than 20 which is true"
else
echo "no condition matched"
fi