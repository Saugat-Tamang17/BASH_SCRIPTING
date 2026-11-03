
#!/usr/bin/bash

# When assigning a value into a variable, no "$" sign is needed
read -p "Enter the integer : " num

# When reading the value of the variable, use the "$" sign
echo -e "\nYour input was : $num"

if [[ ! "$num" =~ ^-?[0-9]+$ ]]; then
    echo -e "\nThe following input is not an integer: $num"
    exit 1
elif [[ "$num" -gt 0 ]]; then
    echo -e "\nThe following input is a positive integer : $num"
elif [[ "$num" -lt 0 ]]; then
    echo -e "\nThe following input is a negative integer : $num"
else
    echo -e "\nThe following number is zero"
fi