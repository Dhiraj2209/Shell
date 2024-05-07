#!/bin/bash

for (( i=0; i<=$1; i++ ))
do
echo "C-style for loop:" $i
done
for i in {1..4}
do
echo "For loop with a range:" $i
done
for i in "zero" "one" "two" "three"
do
echo "For loop with a list of words:" $i
done
website="How To Geek"
for i in $website
do
echo "For loop with a collection of words:" $i
done
