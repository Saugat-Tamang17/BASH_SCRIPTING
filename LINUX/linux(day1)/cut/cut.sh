#task1(Single CSV Column:) Extract only the region column (column 2) from sales.csv using , as the delimiter.
cut -d ',' -f 2 sales.csv

#task2(Multiple Columns:) Extract both the id (column 1) and the rep (column 4) from sales.csv in a single command. (Hint: Separate field numbers with a comma).
cut -d ',' -f 1,4 sales.csv

#task3(Character Slicing): Extract only the first 3 characters of every line in departments.txt. (Hint: Look into the -c flag).
cut -c 1-3 departments.txt
