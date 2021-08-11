#!/bin/bash
# In The Name Of God
# ========================================
# [] File Name : generate.sh
#
# [] Creation Date : 27-10-2016
#
# [] Updated By : Parham Alvani (parham.alvani@gmail.com) & Mohammad Fatemi (mr.smf8@gmail.com)
#
# [] Created By : Elahe Jalalpour (el.jalalpour@gmail.com)
# =======================================
current_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

die() {
        echo $@
        exit
}

usage() {

        echo $current_dir
        echo "this script create the zip folder for the given problem that can be uploaded to Quera website"
        echo "$0 [topic] [problem_name]"
        echo "available topics:"
        echo $(ls -d $current_dir/../bank/*/ | rev | cut -f 2 -d / | rev)
}

if [ $# -ne 2 ]; then
        usage
        exit
fi

topic=$1
pname=$2
problem_dir="$current_dir/../bank/$topic/$pname"

if ! [ -d $problem_dir ]; then
        echo "there is no problem with given topic($topic) and name($pname)"
        exit
fi

tc="$problem_dir/tc"

go=$(find $problem_dir -depth 1 -type f -name "*.go")
python=$(find $problem_dir -type f -name "*.py")

if ! [ -d $tc ]; then
        echo "no test case found."
        exit
fi

# if there is a tester.cpp in test cases folder there is no need to generate
# output files
if ! [ -f $tc/tester.cpp ]; then
        # if there is a generator.go in test cases folder first generates inputs based on it.
        if [ -f $tc/generator.go ]; then
                OIFS=$IFS
                IFS=';' # split output based on ';' instead of newline
                i=0
                echo "[beta] generates test case based on generator.go"

                start=$(date +'%s')

                for input in $(go run $tc/generator.go); do
                        i=$(( i + 1 ))
                        echo $input > "$tc/in/input$i.txt"

                        echo "case $i: $tc/in/input$i.txt"
                        echo
                done
                IFS=$OIFS

                took=$(( $(date +'%s') - $start ))
                printf "$tc/generator.go took %ds.\n" $took
        fi

        if [ -f $go ]; then
                for input in "$tc/in/"*.txt; do
                        i=$(basename $input)
                        i=${i#input}
                        i=${i%.txt}

                        start=$(date +'%s')

                        go run $go < $input > "$tc/out/output$i.txt"

                        took=$(( $(date +'%s') - $start ))
                        printf "$go took %ds.\n" $took

                        echo "test $i: $input --> $tc/out/output$i.txt"
                        echo
                done
        elif [ -f %python ]; then
                for input in "$tc/in/"*.txt; do
                        i=$(basename $input)
                        i=${i#input}
                        i=${i%.txt}

                        start=$(date +'%s')

                        python $python < $input > "$tc/out/output$i.txt"

                        took=$(( $(date +'%s') - $start ))
                        printf "$python took %ds.\n" $took

                        echo "test $i: $input --> $tc/out/output$i.txt"
                        echo
                done
        else
                echo "there is no go/python solution in $problem_dir"
                echo "try to generate zip based on current status of tc folder"
                if ! [ -d $tc/in ] || ! [ -d $tc/out ]; then
                        exit
                fi
        fi
else
        echo "you are using Quera tester.cpp, please make sure you know what you are doing"
fi

cd $tc && zip -r "$current_dir/$pname.zip" *; cd -
echo "quera TC zip is ready"

read -r -p "do you want to delete generated output files?  [Y/n] " input

case $input in
    [yY][eE][sS]|[yY])
		rm $tc/out/*
                echo "done"
		;;
    [nN][oO]|[nN])
                exit 0
       		;;
    *)
	echo "Invalid input..."
	exit 1
	;;
esac
