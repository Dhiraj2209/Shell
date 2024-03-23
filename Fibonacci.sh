# Shell Script for Fibonacci Series
echo "----- Fibonacci Series Calculator -----"
a=0
b=1

echo -n "Enter N :"
read N # reading N from user

echo -n "$a $b " # printing first two numbers
next=$((a + b))
for (( i=2; i< N; i++ ))
do
    echo -n "$next " #printing next number
    a=$b #updating value of and b
    b=$next
    next=$((a + b)) # adding values in next
done