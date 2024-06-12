#! /usr/bin/env
echo "pid is $$" # $$ return pid in which script is running
file=test.txt
trap "rm -f $file && echo file deleted;exit" 0 2 15 # SIGIN OR its corresponding integer value can be used
while (( count<10 ))
do
    sleep 5
    (( count++ ))
    echo $count
done
exit 0