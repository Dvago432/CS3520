# Lab 2: RISC-V Assembly and Instruction Encoding

This folder contains a set of introductory RISC-V assembly exercises focused on control flow, arithmetic, memory access, and low-level instruction encoding. The programs are implemented as `.s` assembly files and are organized by exercise.

## Contents

- `encoding-analysis.md` — walkthrough of the 32-bit encodings for J-type and B-type instructions, including how immediates are split across bit fields.

- `ex1-larger-of-two/` — compares two integer values and prints the larger one.

- `ex2-sum-to-n/` — computes the sum of integers from `n` down to `0`.

- `ex3-count-even-elements/` — counts how many elements in an array are even.

- `ex4-factorial/` — computes the factorial of a number.

- `ex5-greatest-common-divisor/` — calculates the greatest common divisor of two integers.

## Answers to step 2

- model.cpp output: "Maximum: 93"

- Why assembly branches on bge while loop says i < n: Unlike C or example, assembly branches on exit; that is it doesn't have a continue construct like C

- What mv, li, la, ble become:

ble t4, s1, skip == bge s1, t4, skip
mv t1, s4 == addi x9 x29 0
li t1, 1 == addi x6 x0 1
la a0, array == auipc x10 0x10000
                addi x10 x10 0

- Why they exist: They are to help the programmer give explicit instructions of what they want it to do; they bascially exist for the programmer's sanity.

- Why find_max saves s1 but not ra: find_max saves s1 because it is callee-saved (find_max uses it for running max), find_max has to save running max then print max then return s1 unchanged. find_max is a leaf procedure: it makes no calls of its own, so nothing overwrites ra, thus thers is no need to save it.

## Exercise Overview

### 1. Larger of Two Numbers
This program loads two values from memory, compares them, and prints the larger value. It demonstrates conditional branching, register usage, and printing output with system calls.

### 2. Sum to N
This exercise uses a loop to accumulate the sum of values from `n` to `0`. It highlights loop control, arithmetic updates, and storing intermediate results in registers.

### 3. Count Even Elements
This program walks through an array, checks whether each value is even, and increments a counter as needed. It reinforces memory addressing, division/remainder logic, and branching.

### 4. Factorial
This program computes `n!` for a given integer. It uses loop-based multiplication and shows how to manage accumulator and loop-control registers in assembly.

### 5. Greatest Common Divisor
This example computes the GCD of two integers using repeated division and remainder checks. It is a simple introduction to Euclid’s algorithm in assembly.

## Instruction Encoding Analysis
The file `encoding-analysis.md` explains how the immediate values in J-type and B-type instructions are split across different bit ranges in a 32-bit instruction word. This is useful for understanding why branch and jump immediates appear fragmented in machine code.
