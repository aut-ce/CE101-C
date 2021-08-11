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
current_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
problems=$(find $current_dir/../bank -type d -depth 2)


clean_outputs(){
    echo "============================== Deleting Generatable Outputs =============================="
    for problem in $problems; do
        outputs=$(find $problem/tc/out -type f -name "output*.txt" 2> /dev/null)
        solution=$(find $problem -type f \( -name "*.go" -or -name "*.py" \) 2> /dev/null | wc -l)
        if [ $solution -ne 0 ] && [ $(echo $outputs | xargs | wc -l) -ne 0 ]; then
            echo "$problem contains solution. deleting outputs if exist"
            for file in $outputs; do
                rm $file
            done
        fi
    done
}

clean_inputs(){
    echo "============================== Deleting Generatable Inputs =============================="
    for problem in $problems; do
        inputs=$(find $problem/tc/in -type f -name "input*.txt" 2> /dev/null)
        generator=$(find $problem/tc -type f -name "generator.go" 2> /dev/null | wc -l)

        if [ $generator -ne 0 ] && [ $(echo $inputs | xargs | wc -l) -ne 0 ]; then
            echo "$problem has a generator, deleting it's inputs"
            for file in $inputs; do
                rm $file
            done
        fi
    done    
}

usage(){
    echo "invalid usage. $0 {output | input | all}"
}

if [ $# -ne 1 ]; then
    usage
    exit 1
fi

case $1 in 
    "output")
        clean_outputs
        ;;
    "inputs")
        clean_inputs
        ;;
    "both")
        clean_inputs
        clean_outputs
        ;;
    *)
        usage
        exit 1
        ;;
esac