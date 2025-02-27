# RISC-V program to add two numbers 
.globl main

.text 
main: 
    # Initialize registers with values 
    li a0, 5    # Load 5 into a0
    li a1, 7    # Load 7 into a1

    # Add the values and store in a2
    add a2, a0, a1 

    # Exit program (only needed for some simulators)
    li a7, 10   # Exit syscall 
    ecall

