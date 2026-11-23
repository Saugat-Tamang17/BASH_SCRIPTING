#Alphabetical Sort: Sort sales.csv alphabetically from top to bottom.
sort sales.csv

#Sort employees.txt in reverse alphabetical order (Z to A)
sort -r employees.txt

#Numeric Column Sort: Sort sales.csv numerically by the amount column (column 3) from lowest to highest. (Hint: Combine -t',', -k3, and -n).
sort -t ',' -k3 -n sales.csv