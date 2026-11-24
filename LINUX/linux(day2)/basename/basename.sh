#!bin/bash

#Task 2.1 (Basic Filename): Extract just start_server.sh from /opt/app/bin/start_server.sh.

basename /opt/app/bin/start_server.sh
echo -e "\n"

#Task 2.2 (Strip Extension - Method 1): Extract cleanup (removing both the folder path and the .py extension) from /home/deploy/scripts/cleanup.py by passing .py as the second argument.

basename /home/deploy/scripts/cleanup.py .py
echo -e "\n"

#Task 2.3 (Batch Processing with Flag):** Extract all filenames from `file_paths.txt` at once using the `-a` flag.
 xargs basename -a < file_paths.txt
 echo -e "\n"

 #Task 2.4 (Batch + Suffix Stripping): Combine -a and -s to extract all filenames from file_paths.txt while stripping .sh from any shell scripts in the list.

xargs basename -a -s .sh < file_paths.txt

