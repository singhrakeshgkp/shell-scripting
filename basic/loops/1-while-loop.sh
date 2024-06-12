#! /bin/bash
num=1

while [ $num -le 10 ] # OR while (( $num<=10 ))
    do
        echo $num
        num=$(( num+1 ))
    done