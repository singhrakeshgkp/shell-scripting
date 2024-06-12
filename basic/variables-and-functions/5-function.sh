#!/usr/bin/env
# function checks if the given file exist

errorMsg(){
    echo "prease provide argument"
}

function isFileExist(){
   local file=$1  # $1 is argument here, 
    [[ -f $file ]]  && return 0 || return 1    # if file does not exist it will return 0 else 1
} 

[[ $# -eq 0 ]]  && errorMsg   #here $# is predefined variable that returns number of argument passed


if ( isFileExist "$1")
then
    echo "file is available"
else
    echo "file is not available"
fi








