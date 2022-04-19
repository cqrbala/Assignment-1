#!/bin/bash

grep . quotes.txt 

cat -n quotes.txt | sort -k 2 -u | sort -k 1n | cut -f 2- > temp.txt
mv temp.txt quotes.txt
