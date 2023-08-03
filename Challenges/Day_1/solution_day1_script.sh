#!/bin/bash

# The first line is a shebang line which tell which shell type to use, currently using bash 
# Task 1: Comments
# This is a bash script that demonstrates various bash scripting features.

# Task 2: Echo
# We will use the echo command to print a simple message.
echo "Welcome to the Bash Scripting Challenge!"

# Task 3: Variables
# We will declare two variables and assign values to them.
name="keshav"
age=23

# Task 4: Using Variables
# We will take two numbers as input and print their sum.
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2
sum=$((num1 + num2))
echo "The sum of $num1 and $num2 is: $sum"

# Task 5: Using Built-in Variables
# We will use three built-in variables to display relevant information.
echo "Script Name: $0"  # $0 contains the name of the script itself.
echo "Number of Arguments: $#" # $# will check the number of arguments
echo "Arguments List: $*" # $# will show all arguments as a single string
echo "Current bash path is: $BASH"
echo "hostname is: $HOSTNAME"
 
# Task 6: Wildcardsw
# We will use wildcards to list all files with a specific extension.
extension=".txt"
echo "Files with extension $extension:"
ls *$extension
