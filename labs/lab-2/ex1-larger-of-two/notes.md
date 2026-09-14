# Program: Find Largest of Two Numbers

## What it does
Loads two integers from memory, compares them, prints "largest: " 
followed by the bigger value, then exits.

## Register map
| Register | Holds |
| t0       | address of a 
| t1       | address of b 
| t2       | address of msg string 
| t3       | value of a (2) 
| t4       | value of b (5) 

## Control flow
main → largest → print_a_larger or Else → done

## What was hard
- confused la (address) vs lw (value) for the msg string
- fall-through: print_a_larger kept running into Else until j done was added
- named the string and function both "largest" — assembler conflict
- confused which branch printed what