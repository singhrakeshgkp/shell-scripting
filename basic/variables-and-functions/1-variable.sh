#!/usr/bin/env
echo "hello world"
echo $BASH  # $BASH is system variable which will give bash name of system
echo $PWD # return present working directory
name=rakesh   # User defined variable. Here we defined a variable called name, by default variables are global

echo $name # $ symbol we use our variable

#10Num=100;
#echo $10Num # this will not print expected result which is 100, as variable name start with number which is not correct.

# Input single data from terminal
echo "Enter name"
read name
echo "provided name is : $name"


# Input multiple data from terminal
echo "Enter name and age"
read name1 age1 name2 age2
echo "provided name and age are : $name1 age= $age1 $name2 age = $age2"



