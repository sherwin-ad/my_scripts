#!/bin/bash
# Testing bash calculator with command substitution and arithmetic expansion
var1=$(echo "scale=4; 5 / 2" | bc)
echo "The result of 5 / 2 is: $var1"

var1=100
var2=45
var3=$(echo "scale=3; $var1 / $var2" | bc)
echo "The result of $var1 / $var2 is: $var3"