#!/usr/bin/env

echo -e "Enter any character : \c"
read input

 case $input in
    [a-z] )
        echo "entered value is char from a-z small letter, value is $input" ;;
    [A-Z] )
        echo "User entered value is A-Z (capital letter) value is $input" ;;
    [0-9] )
    echo "Entered char is number which is $input" ;;
    ? )
    echo "Inptut is special char which is $input" ;;
    * )
        echo "something else"  ;;
 esac