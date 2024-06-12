#! /bin/bash
days=('sunday' 'monday' 'tuesday' 'wednesday' 'thursday' 'friday' 'saturday')

echo "${days[@]}"  # prints all the elements of array
echo "${days[1]}"  # prints specified index of the array
echo "${!days[@]}" # prints the indexs of the array
echo "${#days[@]}" # prnts length of the array

echo "add/update and delete elements to and from array"

days[7]='default'  # how to add or replace the elements of array
unset days[1]  # remove element which is at index 1
echo "${days[@]}"

echo "Treating any variable as an array"
# any variable can be treated as array, the catch is value will be initialized with index zero
str=test

echo "${str[@]}" 
echo "value at index 0 is : ${str[0]}"  # will print test
echo "value at index 1 is : ${str[1]}"  # will print blank/nothing