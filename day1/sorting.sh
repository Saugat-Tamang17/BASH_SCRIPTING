#first , shebangggg
#!/usr/bin/bash


#second , greet the user 
echo "Today is :" `date`

#third , ask user for the directory they wanna see 
echo -e "\n Enter the directory you want to see :\n"
read the_path

#fourth, show the highest cosuming sorting ,largest first
echo -e "\n The Items in your directory sorted from largest to smallest are: \n"


du -h -d 1 "$the_path" 2>/dev/null | sort -rh
#dh->disk usage
#h ->human readable (i.e shows size in K(KB),M(MB),G(GB) )
#d 1 -> max depth is 1 , meaning it cannot go inside of the inside or inner folders as of now 

#2>/dev/null: Hides any "Permission denied" error messages for files your user account cannot read.

#-r ->( reverse ) sorts in the descending order ( largest to smallest) and -h again , means human readable

