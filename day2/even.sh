#!/usr/bin/bash

#just another exercise for the if else statements , rather small one 
read -p "Enter the number " num
echo -e "\n The number or the input you provided was : " $num

if [[ ! "$((num%2))" -eq 0 ]]; then
    echo -e "Not a even number"
    exit 1
else
    echo "the number is even number " 
fi