## Program: ComputeFactorial

## What the program does

- Computes the factorial of a given number N and displays the result

## Register map

Register  |  What it holds
--------------------------
t0        |  Address of N
t1        |  Address of msg "Factorial: "
t2 (in main)       |  Value of N
t3        |  constant 1
a1        |  i (for looping)
s1        | stores N - i temporarily
t2 (at program end)  | Vaue of factorial
t4        |  N - 1
t5        |  N - 1 (for branch check)

## Control flow

- main -> Factorial -> loop -> done

## What was hard

- Finding a way to store and change n-1
- Factorial logic was a bit tricky to think of in terms of assembly 
