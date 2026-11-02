#!/usr/bin/bash
echo "today is "`date`
echo -e "\n Enter the path to the directory "
read the_path
echo -e "\n your path as the following files and folders: \n" 
ls "$the_path"