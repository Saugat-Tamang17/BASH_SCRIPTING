#!bin/bash

#Task 4.1 (Expected Error & Inspection):** Run `chown root employees.csv` without `sudo` to see the `Operation not permitted` error, then run `groups` to see which groups your WSL user actually belongs to.
chown root employees.csv
groups

#changing the group
chgrp -v adm employees.csv