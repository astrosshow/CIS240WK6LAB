.data
.text
main: 
    addi sp, sp, -16    # Allocate 16 bytes on the stack (aligned to 16 bytes)
    sw ra, 12(sp)       # Store return address on the stack

    li t0, 5            # Load 5 into t0
    li t1, 7            # Load 7 into t1

    jal addTwoNumbers   # Call addTwoNumbers function
    
    li a7, 1            # System call for print integer
    ecall               # Print the result in a0

    li a7, 10           # System call for exit
    ecall               # Exit the program

addTwoNumbers: 
    addi sp, sp, -16    # Allocate 16 bytes on the stack (aligned to 16 bytes)
    sw ra, 12(sp)       # Store return address on the stack

    mv a0, t0           # Copy 5 to a0 (first argument)
    mv a1, t1           # Copy 7 to a1 (second argument)

    add a0, a0, a1      # Add a0 and a1, store result in a0

    jal addOne          # Call addOne function

    lw ra, 12(sp)       # Restore return address
    addi sp, sp, 16     # Deallocate stack space
    ret                 # Return to main

addOne: 
    addi sp, sp, -16    # Allocate 16 bytes on the stack (aligned to 16 bytes)
    sw ra, 12(sp)       # Store return address on the stack

    addi a0, a0, 1      # Add 1 to a0

    lw ra, 12(sp)       # Restore return address
    addi sp, sp, 16     # Deallocate stack space
    ret                 # Return to addTwoNumbers