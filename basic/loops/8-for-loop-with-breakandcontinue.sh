#! /bin/bash

echo "--------Break statement section ------------"
for (( i=0; i<10; i++ ))
do
    if [ $i -gt 3 ]
    then
        echo "executing break as $i is greater than 3"
        break;
    fi
    echo "$i"
done


echo "-----------continue statement section --------------"

for (( i=0; i<10; i++ ))
do
    if [ $i -eq 5 -o $i -eq 8 ]
    then
        echo "num is $i which is 5 or 8, so executing continue statement"
        continue
    fi
    echo "$i"
done