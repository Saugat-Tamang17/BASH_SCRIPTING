okay the things i learned in the span of the day2 in the bash scripting
:

A. IF-ELSE STATEMENTS

1.  if else statements (they dont follow those pythonish type formats ).

2.  the syntax for the if else condition is : if \[\[ condition \]\];
    then statement exit ( note : and yes that spaces between the
    condition is mandatory) also if "!" is there before the condition ,
    understand that this block will execute upon the failure of meeting
    the condition

3.  the symbols such as \<, \> . = are not allowed to be use for these
    feeble comparisons, because they are used for different things like
    referenicing or idk concatenating so you will be using : gt -\>
    greater than ge -\> greater or equal to lt -\> less than le -\> less
    or equal to eq -\> equal to ne -\> not equal to

4.  you will need to exit or end the if else statement, unlike in any
    other programming or scripting languages i did as of now : so if
    \[\[ conditon \]\]; then statement elif \[\[ conditon \]\];then
    statement else; statement fi

here, fi is the ending of the " if statements "

okay that much is what i have learnt until now.

B.QUOTATION DIFFERNECE

1.  if you are using this \[\[\]\] for the conditon , always quote your
    variables i.e "\$num"
2.  if you are using this (( )) for the condtion , no need to quote the
    variables ,and its not for the numbers as well

C. WHILE LOOP 1.pretty much everything is kind of same , as the if else
statements its more of like , until this condition is satisfied , repeat
it but you also have to put a counter statement otherwise it will keep
running and the ending statement of the while statement is : done
