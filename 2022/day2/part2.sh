#!/bin/bash
while read elf outcomes; do
	echo $elf $outcomes
	case $elf in
		A) if [[ "$outcomes" == "X" ]]; then
			me=3
			outcomes_nr=0
		elif [[ "$outcomes" == "Y" ]]; then
			me=1
                        outcomes_nr=3
		else
			me=2
			outcomes_nr=6
		fi;;
	        B) if [[ "$outcomes" == "X" ]]; then
                        me=1
                        outcomes_nr=0
                elif [[ "$outcomes" == "Y" ]]; then
                        me=2
			outcomes_nr=3
                else
                        me=3
                        outcomes_nr=6
                fi;;
                C)  if [[ "$outcomes" == "X" ]]; then
                        me=2
                        outcomes_nr=0
                elif [[ "$outcomes" == "Y" ]]; then
			me=3
                        outcomes_nr=3
                else
                        me=1
                        outcomes_nr=6
                fi;;
	esac
	echo $(( me + outcomes_nr))

done <input | awk '{SUM += $1}END{print SUM}'
