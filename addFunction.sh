#!/bin/bash

readnum () {
read -p "Enter the number 1:" num1
read -p "Enter the number 2:" num2
echo "You have entered $num1 and $num2"
}

add () {
        sum=$(($1+$2))
        echo "The sum of the numbers is: $sum"
}

readnum

add $num1 $num2
