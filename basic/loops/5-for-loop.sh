#! /bin/bash

# approach 1
echo "approach 1"
for num in 4 5 6 7 8 9 10
do
    echo $num
done

# approach 2 -- giving range
echo "approach 2 input value as range"
for num2 in {1..5}
do
    echo $num2
done

# approach 3- increment num by given value, here its two  # this will work in bash version >=4
echo "aproach 3 increment num by given value"
echo "bash version ${BASH_VERSION}"
for num3 in {0..10..2}
do
    echo $num3
done


#approach 4 using simple for loop as java prog uses
echo "approach 4 using simple for loop as java prog uses"
for (( i=0; i<5; i++ ))
do
    echo $i
done


#approach 5 using for loop with some command
echo "approach 5 using for loop with some command"

for command in ls pwd date
do
    echo "-------$command-------"
    $command
done


# approach 6 iterate each and every file and directory available current dir 
# for directlry we can use -d and for file -f
echo "approach 6 iterate each and every file and directory"

for item in *
do
    if [ -d $item ]
    then
        echo "its directory $item"
    else
        echo "its file $item"
    fi
done