#! /bin/bash

# Approach 1

while read str # read file line by line
do
    echo $str
done < test.txt  # file name we want to read, "< file name" syntax known as input redirection, it redirect the file to while loop here.


# Approach 2 --> Reading file in a single variable.
# content red by cat command is input for while loop
cat test.txt | while read str2
    do
        echo $str2
    done


# Approach 3--> Using IFS (Internal field separator) to read file approach 1 and 2 can not be used to read file if it has some special char

while IFS= read -r lineStr
do
    echo $lineStr
done < test.txt  # file name we want to read, "< file name" syntax known as input redirection, it redirect the file to while loop here.
