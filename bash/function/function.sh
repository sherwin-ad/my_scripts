#!/bin/bash

func  () {
    echo "Output from function" # arguments are accessible through $1, $2,...
}

func

# 
function hello() {
    echo "Hello, World!"
}

hello  