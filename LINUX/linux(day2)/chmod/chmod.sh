#!bin/bash

#task 3.1 (Protect Sensitive Data - Octal): Set employees.csv to 600 so only the owner can read and write to it, completely blocking group and others. Verify with stat -c "%a %A %n" employees.csv.

stat -c "%a %A %n" employees.csv
chmod 600 employees.csv
stat -c "%a %A %n" employees.csv
echo -e "\n"

#Task 3.2 (Read-Only Protection & Test): Make server.log read-only for everyone (444), then try running echo "new log" >> server.log to verify the system blocks accidental edits. Afterward, restore it to standard 644.
chmod 444 server.log
stat -c "$a %A %n" server.log
echo "new log" >> server.log
chmod 644 server.log
stat -c "$a %A %n" server.log


