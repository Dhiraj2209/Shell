# Shell Script for Calculating Factorial
a=1
echo "Enter Number to calculate its Factorial : "
read N
n=$N
while [ $N -gt 0 ]
do 
    # $a = $a * $N
    a=$((a * N))
    ((N--))
done
echo "Factorial of $n is $a."