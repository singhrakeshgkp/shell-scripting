# shell-scripting
- [001-Basic](#001-basic)


### 001-Basic
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
