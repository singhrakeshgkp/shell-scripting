#! /usr/bin/env
echo "pid is $$" # $$ return pid in which script is running
trap "echo exit signal detected" SIGINT # SIGIN OR its corresponding integer value can be used
while (( count<10 ))
do
    sleep 5
    (( count++ ))
    echo $count
done
exit 0