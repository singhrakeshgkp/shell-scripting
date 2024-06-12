#! /usr/bin/env
echo "pid is $$" # $$ return pid in which script is running
while (( count<10 ))
do
    sleep 5
    (( count++ ))
    echo $count
done
exit 0