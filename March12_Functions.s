.data                

.text               
    li t0, 5            # store 5 in t0 
    li t1, 7            # store 7 in t1 
    li s1, 0            # intialize result variable with 0 

    addi sp, sp, -16    # Make space in stack 

    sw t0, 0(sp)        # Reserve 5 in stack
    sw t1, 4(sp)        # Reserve 7 in stack

    j addTwoNumbers     # call addTwoNumbers function 
    
return_main:
    mv s1, s0           # move value of finalResult to result

    j done              # jump to done to print result

addTwoNumbers: 
    lw t0, 0(sp)        # Restore t0 value 
    lw t1, 4(sp)        # Restore t1 value 

    addi sp, sp, 16     # Free 2 words in stack

    addi t2, t0, t1     # function sum(t2) = x + y

    j addOne            # call addOne func 

addOne: 
    addi s0, t2, 1      # increment sum(t2), finalResult(s0)

    j return_main       # return to main

done: 
    li a7, 10 
    ecall 