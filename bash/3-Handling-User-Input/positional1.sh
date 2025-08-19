#!/bin/bash
# Testing positional parameters with a simple calculator script 

product=$[ $1 * $2 ]
echo "The first parameter is: $1"
echo "The second parameter is: $2"
echo "The product of $1 and $2 is: $product"