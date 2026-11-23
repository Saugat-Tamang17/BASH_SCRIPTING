# Task1 : Find all error messages in server.log, regardless of whether ERROR is uppercase, lowercase, or capitalized.
grep -i "error" server.log

#task 2 : Display the entire log file except for the noisy DEBUG and INFO lines.
#note : use E for extended regurlar exp because " | " is there between debug and info
grep -Ev "DEBUG|INFO" server.log


#task3: Find the exact line number where the 500 Internal Server Error occurred.
grep -n "500 Internal Server Error" server.log
