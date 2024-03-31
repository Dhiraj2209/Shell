#!/bin/bash

echo "Read N numbers from Command line and Print in Descending order"

# Read numbers into an array
numbers=("$@")

for ((i = 0; i < ${#numbers[@]}; i++)); do
    for ((j = i + 1; j < ${#numbers[@]}; j++)); do
        if ((numbers[i] < numbers[j])); then
            # Swap numbers
            temp=${numbers[i]}
            numbers[i]=${numbers[j]}
            numbers[j]=$temp
        fi
    done
done

# Print sorted numbers
echo "Desc Order sorted Numbers : ${numbers[@]}"
