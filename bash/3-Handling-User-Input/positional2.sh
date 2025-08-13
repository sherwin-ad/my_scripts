#!/bin/bash
# Handling lots of command-line arguments

product=$[ ${10} * ${11} ]
echo "The 10th parameter is: ${10}"
echo "The 11th parameter is: ${11}"
echo "The product value is: $product"
echo "The script name is: $0"
echo "The number of parameters passed is: $#"
echo "All parameters passed are: $*"
echo "The last command line paramenter: ${!#}"
