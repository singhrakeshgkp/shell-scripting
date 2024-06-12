#!/usr/bin/env
echo -e "Enter file name  : \c"   # -e used to support back slash, otherwise it will just print \c not allow u to enter the file name in the same line
read file_name

if [ -e $file_name ]  # -e is flag to check if file exist
then
    if [ -w $file_name ]
    then
    echo "Input some text. To quit press ctrl+d"
    cat  >> $file_name   ## >> double redirection angle bracket is used to append the char at the end of file. Single redirection bracket will override the file
    else
        echo "file don't have write permissions"
    fi
else
    echo "file doesn't exist"

fi