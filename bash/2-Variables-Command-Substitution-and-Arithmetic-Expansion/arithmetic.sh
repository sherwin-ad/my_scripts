#!/bin/bash
# Arithmetic expansion example

var1=10
var2=20
var3=50
# Using arithmetic expansion to calculate a new variable
var4=$[ var1 * (var3 - var2) ]
echo "The result of the arithmetic operation is: $var4"



# Using arithmetic expansion with double parentheses
var1=5
var2=2
var3=$(( var1 / var2 ))
echo "The result of the division is: $var3"