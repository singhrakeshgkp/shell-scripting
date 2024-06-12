#!/usr/bin/env
#Arguments goes to default variable called $@, to parse that in array we use following syntax aurgs<name name could be given>=("$@")
args=("$@")
echo ${args[0]},${args[1]},${args[2]}
echo $@ # will print same output what above line will do

# used to print number of arugments passed

echo $#