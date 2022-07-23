#! /bin/bash

# ECHO COMMNAND
echo Hello World

# Variables
# Uppercase by convention, lowercase will also work, letters numbers and underscores are allowed
NAME="SHIVAM"
echo "My name is $NAME"


# If we use the javascript way then also it will work
echo "My name is ${NAME}"



# User input
read -p "Enter your username: " USERNAME
echo "Entered Username is $USERNAME"


# Conditional
if [ "$NAME" == "Shivam" ]
then 
    echo "your name is Shivam"
fi



# If else
if [ "$NAME" == "Shivam" ]
then 
    echo "your name is Shivam"
else
    echo "your name is SHIVAM"
fi


#######
# val1 -eq val2 Returns true if the values are equal
# val1 -ne val2 Returns true if the values are not equal
# val1 -gt val2 Returns true if the val1 > val2
# val1 -ge val2 Returns true if the val1 >= val2
# val1 -lt val2 Returns true if the val1 < val2
# val1 -le val2 Returns true if the val1 <= val2
####

NUM1=3
NUM2=5
if [ "$NUM1" -lt "$NUM2" ]
then
    echo " 3 is less than 5"
else
    echo " 3 is greater than 5"
fi


# File Conditions
###### 
# -d file   Returns True if file is a directory
# -e file   Returns True if file exists
# -f file   Returns True if provided string is a file
# -g file   Returns True if group id is set on the file
# -r file   Returns True if file is readable
# -s file   Returns True if file has non zero size
# -u file   Returns True if userid is set to file
# -w file   Returns True if file is writable
# -x file   Returns True if file is executable
#######

FILE="text.txt"

if [ -f "$FILE" ]
then
    echo "$FILE is a file"
else
    echo "$FILE is not a file"
fi




# Case  Statement
read -p "Are you 21 or over? Y/N" ANSWER
case "$ANSWER" in
    [yY] | [yY][eE][sS])
        echo "You can  have a beer :)"
        ;;
    [nN] | [nN][oO])
        echo "Sorry No beer"
        ;;
    *)
        echo "Please enter Y/N"
        ;;
esac



# Simple For Loop
NAMES="Shivam Shubham Aryan Hanuman Sanjay"
for NAME in $NAMES
    do 
        echo "hello $NAME"
done





# For loop to rename files
FILES=$(ls *.txt)

for FILE in $FILES
    do 
        echo "Renaming $FILE to new-$FILE"
        mv $FILE $NEW-$FILE
done






#While Loop
LINE=1
while read -r CURRENT_LINE
    do
        echo "$LINE : $CURRENT_LINE"
        ((LINE++))
done < "./one.txt"




# Functions in Bash
function greet(){
    echo "Hello I am $1 and I am $2"
}

greet "Shivam" "22"




# Create a folder and Write to file
mkdir hello
touch "hello/world.txt"
echo "Hello World" >> "hello/world.txt"
echo "Created hello/world.txt" 
