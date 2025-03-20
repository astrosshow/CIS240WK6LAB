.data                

.text               
    li t0, 5                  # store 5 in t0 
    li t1, 7                  # store 7 in t1 
    li s1, 0                  # initialize result var

    addi sp, sp, -16          # allocate space in stack 

    sw t0, 0(sp)              # Reserve 5 in stack
    sw t1, 4(sp)              # Reserve 7 in stack

    jal addTwoNumbers     # call addTwoNumbers function and save ra in stack (ra = PC + 4)
    
return_main:
    lw s0, 12(sp)             # load value of result from stack 
    mv s1, s0                 # copy value of s0 to s1

    addi sp, sp, 16           # deallocate space in stack 
    
    mv a0, s1                 # copy result into a0
    li a7, 1                  # syscall for print int 
    ecall

    j done                    # jump to done to print result

addTwoNumbers: 
    lw t0, 0(sp)              # Restore t0 value from stack 
    lw t1, 4(sp)              # Restore t1 value from stack 

    mv a0, t0                 # copy t0 value to argument (a0)
    mv a1, t1                 # copy t1 value to argument (a1)

    add t2, a0, a1           # function sum(t2) = x + y
    sw t2, 8(sp)              # store return value in stack

    jal addOne            # call addOne function and save ra in stack (ra = PC + 4)
    jr ra                     # return to caller 

addOne: 
    lw t2, 8(sp)              # Restore t2 value from stack 

    mv a4, t2                 # copy t2 value to agrument (a4)

    addi s0, a4, 1            # increment sum(t2), finalResult(s0)
    sw s0, 12(sp)             # store return value in stack

    jr ra                     # return to caller

done: 
    li a7, 10                 # ecall to exit
    ecall 