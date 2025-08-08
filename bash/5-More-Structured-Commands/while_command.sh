#!/bin/bash

count=1

while [ $count -le 10 ]; do
  echo $count
  count=$[$count + 1]
done

count1=10
while [ $count1 -gt 0 ]; do
  echo $count1
  count1=$[$count1 - 1]
done