#!/bin/bash

read string

l=${#string}
for (( i=$l-1; i>=0; i-- ));
do
    rev=$rev${string:$i:1}
done

echo $rev

echo $rev | tr a-z b-za

x=$(( ($l-1)/2 ))
#echo $x

for (( i=x; i>=0; i-- ));
do
    halfrev=$halfrev${string:$i:1}
done
for (( i=x+1; i<l; i++ ));
do
    halfrev=$halfrev${string:$i:1}
done

echo $halfrev

