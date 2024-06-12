#!/usr/bin/env
echo -e "Enter file name  : \c"   # -e used to support back slash, otherwise it will just print \c not allow u to enter the file name in the same line
read file_name

if [ -s $file_name ]  # -e is flag to check if file exist
then
    echo "file exits"
else
    echo "file doesn't exist"

fi