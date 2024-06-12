#!/usr/bin/env

# echo will print 10 not 30, as it is readonly variable
readonly i=10
i=30

echo $i


