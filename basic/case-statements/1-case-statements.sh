#!/usr/bin/env
 day=$1
 case $day in
    "MONDAY" )
        echo "first day of week" ;;
    "TUESDAY" )
        echo "second day of week" ;;
    * )
        echo "something else"
 esac