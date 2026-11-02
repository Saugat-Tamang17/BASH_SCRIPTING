#!/usr/bin/bash

echo -e "Saugat\nTamang" >input.txt

while read line
do 
echo "hello" $line
done <input.txt