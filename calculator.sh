#!/bin/bash

printf "Enter the first number: "
read number1
printf "Enter the operation (+, -, *, /, %, ^, sin, cos, tan): "
read operation
printf "Enter the second number: "
read number2

case $operation in
    +)
        result=$((number1 + number2))
        ;;
    -)
        result=$((number1 - number2))
        ;;
    \*)
        result=$((number1 * number2))
        ;;
    /)
        result=$(echo "scale=2; $number1 / $number2" | bc)
        ;;
    %)
        result=$((number1 % number2))
        ;;
    ^)
        result=$(echo "$number1 ^ $number2" | bc)
        ;;
    sin)
        result=$(echo "s($number1)" | bc -l)
        ;;
    cos)
        result=$(echo "c($number1)" | bc -l)
        ;;
    tan)
        result=$(echo "s($number1) / c($number1)" | bc -l)
        ;;
    *)
        echo "Invalid operation: $operation"
        exit 1
        ;;
esac

echo "$number1 $operation $number2 = $result"
exit 0
