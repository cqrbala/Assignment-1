#!/bin/bash

file=$1

wc -c < $file
wc -l < $file
wc -w < $file

awk '{print "Line No: "NR" - Count of words: [" NF "]"}' $file
grep -wo  '[[:alnum:]]\+' $file > temp.txt
cat -n temp.txt | sort -k2 | uniq -cdf1 | sort -nk2  > tempnew.txt
while read line
do
echo "$(echo $line | awk '{print "Word: " $3 " - Count of repitition: " $1}')"
done < tempnew.txt
rm temp.txt
rm tempnew.txt