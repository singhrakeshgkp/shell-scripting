#! /bin/bash
num=1

while [ $num -le 2 ] # OR while (( $num<=10 ))
    do
        echo $num
        (( num++ ))
        sleep 1 # will be sleep for 1 sec 
    done