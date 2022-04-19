#!/bin/bash

IFS=',' read -a arr
l=${#arr[@]}

for (( x=0; x<$l; x++ ))
do
    for (( y=0; y<$l-$x-1; y++ ))
    do
        if [ ${arr[y]} -gt ${arr[$((y+1))]} ]
        then
            temp=${arr[y]}
            arr[$y]=${arr[$((y+1))]}  
            arr[$((y+1))]=$temp
        fi
    done
done

echo "${arr[@]}"