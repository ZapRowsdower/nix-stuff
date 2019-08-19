#!/bin/bash

# From https://www.youtube.com/watch?v=v-F3YLd6oMw

# To find bash install location: $ which bash

# To change user permissions on a bash file to allow it to be executable: $ chmod +x nameOfShellScript.sh

# To change the working directory to the location/directory of the script:
# cd "$(dirname "$0")"

# PRINT SOMETHING
# echo Hello World!

# VARIABLES
# Uppercase by convention
# Letters, numbers, underscores
# NAME="Brad"
# echo "My name is $NAME" # can also do ${NAME}

# USER INPUT
# -p option means 'prompt the users'
# read -p "Enter your name: " NAME
# echo "Hello $NAME!"

# SIMPLE IF
# NAME="Brad"
# if [ "$NAME" == "Brad" ]
# then
#     echo "Your name is Brad"
# fi

# IF-ELSE
# NAME="Jeff"
# if [ "$NAME" == "Brad" ]
# then
#     echo "Your name is Brad"
# else
#     echo "Your name is NOT Brad"
# fi

# ELSE-IF (elif)
# NAME="Brad"
# if [ "$NAME" == "Brad" ]
# then
#     echo "Your name is Brad"
# elif [ "$NAME" == "Jack" ]
# then
#     echo "Your name is Jack"
# else
#     echo "Your name is NOT Brad"
# fi

# COMPARISION
# NUM1=31
# NUM2=5
# if [ "$NUM1" -gt "$NUM2" ]
# then
#     echo "$NUM1 is greater than $NUM2"
# else
#     echo "$NUM1 is less than $NUM2"
# fi
############
# v1 -eq v2 - Returns true if the values are equal
# v1 -ne v2 - Returns true if the values are not equal
# v1 -gt v2 - Returns true if v1 is greater than v2
# v1 -ge v2 - Returns true if v1 is greater than or equal to v2
# v1 -lt v2 - Returns true if v1 is less than v2
# v1 -le v2 - Returns true if v1 is less than or equal to v2
############

# FILE CONDITIONS
# FILE="test.txt"
# if [ -e "$FILE" ]
# then 
#     echo "$FILE exists"
# else
#     echo "$FILE exists"
# fi
#######
# -d file - True if the file is a directory
# -e file - True if the file exists (note -f is generally used instead since this is not portable)
# -f file - True if the provided string is a file
# -g file - True if the group id is set on a file
# -r file - True if the file is readable
# -s file True if the file has a non-zero size
# -u - True if the user id is set on a file
# -w - True if the file is writeable
# -x - True if the file is execuatble
#######

#CASE STATEMENT
# read -p "Are you 21 or over? Y/N " ANSWER
# case "$ANSWER" in
# # y or yes (case insensitive)
#     [yY] | [yY][eE][sS])
#         echo "You can rent a car"
#         ;;
#     [nN] | [nN][oO])
#         echo "You can't rent a car. Sorry"
#         ;;
#     *)
#         echo "Please enter y/yes or n/no"
#         ;;
# esac

# SIMPLE FOR LOOP
# NAMES="Brad Kevin Alice Mark"
# for NAME in $NAMES
#     do 
#         echo "HELLO $NAME"
# done

# FOR LOOP TO RENAME FILES
# FILES=$(ls *.txt)
# NEW="new"
# for FILE in $FILES
#     do
#         echo "Renaming $FILE to new-$FILE"
#         mv $FILE $NEW-$FILE
# done

# WHILE LOOP - READ FILE LINE BY LINE
# LINE=1
# while read -r CURRENT_LINE
#     do 
#         echo "$LINE: $CURRENT_LINE"
#         ((LINE++))
# done < "./new-1.txt"

# FUNCTION
# function sayHello() {
#     echo "Hello World"
# }
# sayHello

# FN WITH PARAMS
# function greet() {
#     echo "Hello, I am $1 and I am $2"
# }
# greet "Brad" "36"

# CREATE FOLDER AND WRITE TO FILE
# mkdir Hello
# touch "hello/world.txt"
# echo "Hello world" >> "hello/world.txt"
# echo "Created hello/world.txt"
