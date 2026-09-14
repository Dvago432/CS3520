# Program: Add first n integers

## What it does:

Add integers from n to 0

## Register map
Register | what it holds
t0       | address of n
t1       | value of n
t2       | address of "Sum to n: "
t3       | sum
t4       | i, for branching and loops

## Control flow
main -> sum_to_n -> loop -> repeat -> done

## What was hard
--Trying to keep running sum, I wanted to use an s register but it was tedious and unnecessary

--loop logic was kind of confusing