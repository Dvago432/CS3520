## Answers to step 2:
- - Assembly branches on bge (i >= n) while C++ loops while i < n because assembly does not have a continue construct,
-   so as long as there is an instruction to jump back,
-   it will keep running, rather it branches on exit.

- - mv and li are addi instructions; ble t0, t1 = bge t1, t0
-   la a0, msg == auipc x10 0x10000; addi x10 x10 -40
-   These instructions exists purely for the programmer's sanity; they allow the programmer to explicitly state what they want to do and
-   reduce errors
 
- - find_max saves s1 on the stack because it is callee-saved (find_max uses it for running max), find_max has to save the running max then
-   return the register unchanged; ra does not need saving because it is not called anywhere because find_max never calls anything; if that were the
-   case it would have to be saved so that the program can return to find_max after whatever function was called is done. 
