#!bin/bash

#make the task script executable ( wsl native directory is good way to test it)
cd ~
stat -c "%a %A %n" deploy.sh  
chmod u+x deploy.sh
stat -c "%a %A %n" deploy.sh


#q2. lock down the secrets of the db_credentials

#check the current permission for owner , group and others 
stat -c "%a %A %n" db_credentials.env 

chmod u-x ,g-rwx , o-rwx db_credentials.env

#now check the output again , should come out as 600
stat -c "%a %A %n" db_credentials.env 
