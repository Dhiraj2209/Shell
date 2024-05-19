#!/bin/bash

# A Shell Script Syntax Example

# 1. Shebang
# The shebang (#!) at the top of the script indicates the script interpreter.

# 2. Comments
# This is a comment in a shell script.

# 3. Variables
var="Hello, World!"
readonly const_var="I am constant"

# 4. Printing
echo $var
echo "This is a constant variable: $const_var"

# 5. Command Substitution
current_date=$(date)
echo "Current date and time: $current_date"

# 6. Arithmetic Operations
num1=5
num2=10
sum=$((num1 + num2))
echo "Sum: $sum"

# 7. Conditional Statements
# if-else
if [ $num1 -gt $num2 ]; then
  echo "num1 is greater than num2"
else
  echo "num1 is less than or equal to num2"
fi

# elif
if [ $num1 -eq $num2 ]; then
  echo "num1 is equal to num2"
elif [ $num1 -gt $num2 ]; then
  echo "num1 is greater than num2"
else
  echo "num1 is less than num2"
fi

# 8. Loops
# for loop
for i in 1 2 3 4 5; do
  echo "Iteration $i"
done

# while loop
count=1
while [ $count -le 5 ]; do
  echo "Count: $count"
  ((count++))
done

# until loop
count=1
until [ $count -gt 5 ]; do
  echo "Count in until loop: $count"
  ((count++))
done

# 9. Functions
my_function() {
  echo "This is a function"
  local local_var="I am local"
  echo $local_var
}
my_function

# 10. Arguments to Shell Script
echo "First argument: $1"
echo "Second argument: $2"

# 11. Arrays
my_array=("apple" "banana" "cherry")
echo "First element: ${my_array[0]}"
echo "All elements: ${my_array[@]}"

# 12. String Operations
str="Hello, Shell Scripting"
echo "Length of str: ${#str}"
echo "Substring: ${str:7:5}"

# 13. File Operations
# Creating a file
echo "Creating a file..." > myfile.txt
# Reading from a file
echo "Contents of myfile.txt:"
cat myfile.txt
# Appending to a file
echo "Appending text" >> myfile.txt
echo "New contents of myfile.txt:"
cat myfile.txt

# 14. Input from User
# echo "Enter your name:"
# read name
# echo "Hello, $name!"

# 15. Case Statement
case $1 in
  start)
    echo "Starting..."
    ;;
  stop)
    echo "Stopping..."
    ;;
  restart)
    echo "Restarting..."
    ;;
  *)
    echo "Usage: $0 {start|stop|restart}"
    ;;
esac

# 16. Exit Status
# 0 indicates success, any other value indicates failure
exit 0
