#!/bin/bash
x=0
while read line; do
  if [[ $line != "" ]];then
    x=$((x + line))
  else
    echo $x
    x=0
  fi
done <input | sort -n | tail -n1
