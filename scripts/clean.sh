#!/bin/bash
# In The Name Of God
# ========================================
# [] File Name : clean.sh
#
# [] Creation Date : 11-08-2021
#
# [] Created By : Mohammad Fatemi (mr.smf8@gmail.com) 
# =======================================

# we don't need output files of problems with existing .go solution

problems=$(find ../bank -type d -depth 2)

for problem in $problems; do
    outputs=$(find $problem/tc/out -type f -name "output*.txt" 2> /dev/null)
    go=$(find $problem -type f \( -name "*.go" -or -name "*.py" \) 2> /dev/null | wc -l)
    if [ $go -ne 0 ] && [ $(echo $outputs | xargs | wc -l) -ne 0 ]; then
        echo "$problem contains solution. deleting outputs if exist"
        for file in $outputs; do
            rm $file
        done
    fi
done