# shell-scripting
- [001-Basic](#001-basic)
  - [Variables](#variables)
  - [Arguments](#Arguments)
  - [Conditional Statements](#conditional-statements)
  - [Case Statements](#case-statements)
  - [File Handling](#file-handling)
     - [Append Output to end of file](#append-output-to-end-of-file)
  - [Logical operators](#logical-operators)
  - [Arithmetic Operations](#arithmetic-operations)
     - Operations on integer and floating points
  - [Case Statement](#)
  - [Array](#)
  - [Loop](#loop)
    - [while loop](#while-loop)
       - [Using Sleep in while loop](#)
       - [Read file using while loop](#)
    
## 001-Basic

### Variables
- Creating first shell program that prints hello.
   - Create a new file name hello.sh, add first line as ```#!<location of your bash>``` hash(#)+bang(!)= shbang. for linux location of bash is ```/bin/bash``` for unix ```/usr/bin/env``` And then finally print hello world uisng ```echo hello world``` command
   - Give execution permission using command ```chmod +x <file name> for me its hello.sh```, execute the hello.sh file using ```bash hello.sh``` command
- Variables
   - System Variable ---> Created and maintained by unix or linux OS
   - User Defined Variable -->
- Read Input from terminal
   - Following code can be used to read single and multiple inputs from terminal
     ```

         echo "Enter name"
         read name
         echo "provided name is : $name"
         
         echo "Enter name and age"
         read name1 age1 name2 age2
         echo "provided name and age are : $name1 age= $age1 $name2 age = $age2"
     ```
   - How to enter input on the same line(ex enter name : <u want input here>)
    ```
      read -p 'user name: ' user_name  # allow to enter input on the same line
      echo "your name is $user_name"
    ```
   - How to make input silent(dont want to show password while giving input)
   ```
   read -p 'user name: ' user_name  # allow to enter input on the same line
   echo "your name is $user_name"
   read -sp 'password ' password
   echo
   echo "your password is $password"
   ```
  - How to input data in array and access that array(refer file 3-variable)
   ```
   echo "Enter marks"
   read -a  marks
   echo "your marks are  ${marks[0]},  ${marks[1]}"
   ```
  - what if i don't provide any variable after ```read``` command (in this case data will be read in  system defined variable name $REPLY)
    ```
      echo "Enter name"
      read
      echo "your name is $REPLY"
    ``` 
### Arguments
- First Approach
   ```
    echo $1 $2 $3
   ```
- Second Approach - Using array
  ```
    args=("$@")
    echo ${args[0]},${args[1]},${args[2]}
    echo $@ # will print same output what above line will do
  ```
- Syntax can be used to print number of argument passed ```echo $#```    $# default variable provide num of arguments

### Conditional Statements
- Syntax if
  ```
   if[condition]
    then
      //statement
    fi //end of if statements
       
  ```
- Syntax if elseif
   ```
      age=25
      if [ $age -gt 30 ]
      then
      echo "age is greater than 30  which is true"
      elif [ $age -gt 20 ]
      then
      echo "age is greater than 20 which is true"
      else
      echo "no condition matched"
   ```
  - comparing integers
    - first way to compare integer using -eg, -gt, -lt .....etc this will be used in [] brackets
      ```
        age=25
        if [ $age -gt 20 ]
        then
        echo "age is greater than 20 which is true"
        fi
      ```
     - Second way to compare integer using double parenthesis
       ```
        age=25
        if (( $age > 20 )) # OR[ $age > 20 ]
        then
        echo "age is greater than 20 which is true"
        fi
       ```
  - Comparing String
    ```
      name=rakesh
      if [ $name == "rakesh" ]
      then
      echo "true"
      else
      echo "false"
      fi
    ```
  ### Case Statements
  - expression
    ```
    
    ```
  ### File Handling
- Refer file_handling dir for pratices
- Some important flags used
   - ``` -e ``` -> Used to check if file exist
   - ``` -f ``` -> Used to check if file found and it is regular file
   - ``` -d ``` -> Check if directlry exist
   - ``` -b ``` -> used for blob special file such as video, image ... etc
   - ``` -c ``` -> Used for charctor special file
   - ``` -s ``` -> Checks if file is empty
   - ``` -r ``` -> Checks if file has read permissions
   - ``` -w ``` -> Checks if file has write permissions
   - ``` -x ``` -> Checks if file has execute permissions

#### Append output to end of file
- Refer 2-file-handling.sh
- First input file name which does not exist, it should print file does not exist msg
- Give the correct file name, it shoud append given char in the file if, file have write permissions
- Remove the write permission ```chmod -w``` and test it out, it should print u don't have write permissions

### Logical Operators
- "AND" operator -> there are two approach to use it  with if syntax for same is given below
  - approach1 -> ``` if [ "$sal" -gt 20 ] && [ "$sal" -lt 40 ] ```
  - approach2 -> ``` if [ "$sal" -gt 20 -a "$sal" 0lt 40 ] ```
- "OR" Operator
    - approach1 -> ``` if [ "$salary" -eq 25000 ] || [ $salary -eq 40000 ] ```
    - approach2 -> ``` [ "$salary" -eq 25000 -o "$salary" -eq 40000 ] ```

### Arithmetic Operations
- Performing Arithmetic operations on integers
  - approach 1 (support integers only) ----> Using double ```(())```  example    ```echo $(( num1 + num2 )) ```
  - approach 2 (support integers only)-----> Using ```expr``` keyword example ```echo $(expr $num1 + $num2 )```
 
- Performing Arithmetic operations on floating points/decimal
  - Here we will use ```bc``` command, BC stands for basic calculator, it comes with linux by default. To know more about bc run ```man bc``` command on your linux machine
  - syntax ```echo "2+2" | bc```
### Loops
#### While Loop
