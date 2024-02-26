#!/bin/bash

words=("chipi" "chapa" "dubi" "daba")
correct=(0 1 2 3)

shuffle() {
    local arr=("$@")
    local len=${#arr[@]}
    for ((i=$len-1; i>0; i--)); do
        j=$((RANDOM % (i+1)))
        tmp=${arr[i]}
        arr[i]=${arr[j]}
        arr[j]=$tmp
    done
}

index=("${correct[@]}")

while true; do
    shuffle "${index[@]}"
    for i in "${index[@]}"; do
        echo -n "${words[i]} ${words[i]} "
    done
    if [ "${index[*]}" == "${correct[*]}" ]; then
        break
    fi
done

echo "mágico mi dubi dubi boom boom boom boom"
