#!/bin/bash

number1=$1
number2=$2

sum=$(($number1+$number2))

echo " total is :: $sum"

echo " how many args passed :: $# "
echo " all args passed ::$@ "
echo " script name :: $0 "
