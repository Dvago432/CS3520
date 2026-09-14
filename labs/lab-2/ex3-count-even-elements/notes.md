## Program: Count even elements

## What the program does

counts the number of even elements in an array and prints the number

## Register map

Register  |  what it holds
---------------------------
a0 (at beginning) | array address
a1        | address of "Number of even elements: "
t0        | address of number of elements (n)
t1        | value of n
t2        | i (for looping)
t3        | count
t4        | first array element

## Control flow

- main -> count_even -> loop -> increment -> done

## What was hard

- Finding the remainder and checking if its equal to 0 was tricky
because I kept doing: srli t4, t3, 1 to multiply by 2, slli t5, t3, 1 to divide, then sub t4 and t5 for remainder, while i should have done: slli t5, t4, 1 (quotient*2) then subtracted