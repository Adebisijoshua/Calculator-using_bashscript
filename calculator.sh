#!/bin/bash
echo "Usage: ./calculator.sh a b"
printf "Enter the first number: "
read number1
printf "Enter the operation (+, -, *, /): "
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
    *)
        echo "Invalid operation: $operation"
        exit 1
        ;;
esac

echo "$number1 $operation $number2 = $result"
exit 0

