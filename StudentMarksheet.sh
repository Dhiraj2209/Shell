#!/bin/bash

# Function to calculate total marks
calculate_total_marks() {
    total=$((subject1 + subject2 + subject3))
    echo "$total"
}

# Function to calculate percentage
calculate_percentage() {
    percentage=$(( (total_marks * 100) / 300 ))
    echo "$percentage"
}

# Function to determine class
determine_class() {
    if ((percentage >= 80)); then
        class="Distinction"
    elif ((percentage >= 60)); then
        class="First Class"
    elif ((percentage >= 50)); then
        class="Second Class"
    elif ((percentage >= 40)); then
        class="Pass Class"
    else
        class="Fail"
    fi
    echo "$class"
}

# Input
read -p "Enter Your name : " name
read -p "Enter marks for OS : " subject1
read -p "Enter marks for OOP : " subject2
read -p "Enter marks for DM : " subject3

# Calculate total marks
total_marks=$(calculate_total_marks)

# Calculate percentage
percentage=$(calculate_percentage)

# Determine class
class=$(determine_class)

# Display mark sheet
echo "------------ Mark Sheet ------------"
echo "Name : $name"
echo "OS : $subject1 / 100"
echo "OOP : $subject2 / 100 "
echo "DM : $subject3 / 100"
echo "Total Marks : $total_marks"
echo "Percentage : $percentage%"
echo "Class Obtained : $class"
echo "------------------------------------"