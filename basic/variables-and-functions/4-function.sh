#!/usr/bin/env
# here msg is a global variable, hence it is accessible anywhere from script
function greet(){
    msg=$1  # $1 is argument here
    echo "MSG is $msg"
}

msg="GM"
echo "MSG is $msg"
greet "GE"

echo $msg



