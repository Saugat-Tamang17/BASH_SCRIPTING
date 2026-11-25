#!bin/bash

#make the task script executable ( wsl native directory is good way to test it)
cd ~
stat -c "%a %A %n" deploy.sh  
chmod u+x deploy.sh
stat -c "%a %A %n" deploy.sh
