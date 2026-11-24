#!/bin/bash

#Task 1 (Basic Extraction): Extract the parent directory path from /var/www/html/uploads/invoice_2026.pdf.

dirname /var/www/html/uploads/invoice_2026.pdf

#Task 2 (Batch Processing): Extract the directory paths for all lines in file_paths.txt in a single command without using a loop. (Hint: xargs as it lets the input be passed as arguement from another file or same file )
 xargs dirname < file_paths.txt


#Task 3 (Grandparent Folder): Find the grandparent directory of /etc/nginx/sites-available/default.conf#

dirname "$(dirname /etc/nginx/sites-available/default.conf)"

#Task 4 (Real-World Pipeline): Extract only the file path column from server.log using awk '{print $4}' or cut -d' ' -f4, and pipe it into dirname so you get a clean list of every directory mentioned in the logs. (Hint: xargs is required when piping into dirname).

cut -d ' ' -f4  server.log| xargs dirname