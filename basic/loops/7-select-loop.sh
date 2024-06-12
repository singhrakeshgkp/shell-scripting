#! /bin/bash
# select statement with case statement
echo "select with case statement"

select subject in physics chemistry  math computer-science
do
    case $subject in
    physics)
        echo "physics selected";;
    chemistry)
        echo "chemistry selected";;
    math)
        echo "math selected";;
    computer-science)
        echo "computer science selected";;
    *)
        echo "invalid input given"
    esac
    echo " $subject is choosen "
done