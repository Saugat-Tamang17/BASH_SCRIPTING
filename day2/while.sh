#!/user/bin/bash

#bash script for the while loop

i=1
echo -e "\n The value for i is:" $i

while [[ "$i" -le 10 ]]; do
      echo -e "$i"
     ((i+=1))
done