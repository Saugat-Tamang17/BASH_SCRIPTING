okay the things that i learnt in day 3 of basic linux and bashing
scripts :

1.  the cron is the scheduler of the unix system ( given when the
    computers are in the running state)

cron scheduling is done in the following way :

-   -   -   -   -   sh /path/to/script.sh where respective \* ( from
                    first )represents minutes ,hours, days, months,
                    weekdays ( like sunday monday in the form of 1 2
                    etc)

    so if i say

    =\> 0 0 \* \* \* sh /path/to/script.sh it means that the script is
    scheduled to run at 00:00 ( i.e everyday at midnight since only
    hours and minutes are specified here)

or ,

=\> 0 6 \* \* 1-5 meaning run the script at 6 am from monday to friday (
every day and month)

note : you cant just put the crontab schedule syntax directly like that
, the process goes as follows :

1.  go to the path where yourscript is
2.  grant it the permission of execution ( like run execution not that
    killing execution ffs)using : =\> chmod +x path/to/script.sh where
    chmod = change mod +x = add executable

3.add the crontab file for editing: =\> crontab -e

4.  then you put that scheduling line in the final part of the script
    file ( in the nano.file tho thats that)

B . SOME OF THE FILE TEST OPERATORS THINGS:

i.  -f = is this a regular file (probably use this if the target path is
    an existing file ( not a folder tho))

ii. -d = is it a directory ( use this to verify if the given folder does
    exist before creating or copying files in it)

iii. -e = does it even exist ( checks if anything exist in that path
     like file folder or link )

iv. -s = is not empty ? ( use while checking if a log or data file exist
    and contains data which has \>0bytes )

C. SOME OF THE PERMISSION TEST

i.  -r = is this readable ( checks if the user has permision before
    reading the file )

ii. -w = is this writable (checks if the user has the permission before
    editing or appending in the file )

iii. -x =is executable ( checks if the user has permission before
     executing the file )
