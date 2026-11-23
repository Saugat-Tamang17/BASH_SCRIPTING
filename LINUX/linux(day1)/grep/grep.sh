# Task1 : Find all error messages in server.log, regardless of whether ERROR is uppercase, lowercase, or capitalized.
grep -i "error" server.log

#task 2 : Display the entire log file except for the noisy DEBUG and INFO lines.
#note : use E for extended regurlar exp because " | " is there between debug and info
grep -Ev "DEBUG|INFO" server.log


#task3: Find the exact line number where the 500 Internal Server Error occurred.
grep -n "500 Internal Server Error" server.log


#task4 : Search for Connection timeout and include the 1 line immediately after it so you can see what the system did next.
grep -A 1 "Connection timeout" server.log

#task5 : IP Address Extraction: Using Extended Regular Expressions (-E), find all lines that contain an IP address starting with 10.0.0..
$ grep -E "10\.0\.0\.[0-9]+" server.log