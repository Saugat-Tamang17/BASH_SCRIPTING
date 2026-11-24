#!bin/bash

#task 3.1 (Protect Sensitive Data - Octal): Set employees.csv to 600 so only the owner can read and write to it, completely blocking group and others. Verify with stat -c "%a %A %n" employees.csv.

stat -c "%a %A %n"employees.csv
chmod 600 employees.csv
stat -c "%a %A %n" employees.csv
echo -e "\n"

