#!/bin/bash
x=0
while read line; do
  if [[ $line != "" ]];then
    x=$((x + line))
  else
    echo $x
    x=0
  fi
done <input | sort -n | tail -n3 | awk '{SUM += $1}END{print "Elf with the most Calories:",$1,"| Sum of calories by top 3 Elves:",SUM}'
