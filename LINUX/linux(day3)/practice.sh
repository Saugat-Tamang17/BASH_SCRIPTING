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

#q.3 : simulate the lockout for every kind of user on the certain file ( in the wsl native directory )
cd ~
cp "/mnt/c/Saugat-Tamang-024BSCIT036/BASH_SCRIPTING/LINUX/linux(day3)/paths_manifest.txt" ~/
stat -c "%a %A %n" paths_manifest.txt

#removing every permission from the file , making it unusable for now 
chmod a-rwx paths_manifest.txt

cat paths_manifest.txt # this should give the error : cat: paths_manifest.txt: Permission denied
chmod u+rw paths_manifest.txt
cat paths_manifest.txt #now this should give you the output 

#question 4 : verbose audit of the chmod permission editing 
chmod -v 750 deploy.sh # ( or you can do g+rx,o-rwx to simulate 750)