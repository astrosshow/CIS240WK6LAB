.data
array: .word 7, -3, 43, 19    # Store array into data memory
max: .word 0                  # Store max into data memory and initialize to 0

.text
main: 
    la t0, max                # Load address of max into t0   
    la t1, array              # Load address of array into t1

    lw t2, 0(t0)              # Load max into t2
    lw t3, 0(t1)              # Load array[0] into t3

    blt t2, t3, new_max       # Branch to new_max if max < array[0]
    j skip 

new_max:
    sw t3, 0(t0)              # Store new max

skip:
    lw t2, 0(t0)              # Reload max into t2

    lw t4, 4(t1)              # Load array[1] into t4
    blt t2, t4, new_max_1     # Branch to new_max_1 if max < array[1]
    j skip_1

new_max_1:
    sw t4, 0(t0)              # Store new max

skip_1:
    lw t2, 0(t0)              # Reload max into t2

    lw t5, 8(t1)              # Load array[2] into t5
    blt t2, t5, new_max_2     # Branch to new_max_2 if max < array[2]
    j skip_2

new_max_2:
    sw t5, 0(t0)              # Store new max

skip_2:
    lw t2, 0(t0)              # Reload max into t2

    lw t6, 12(t1)             # Load array[3] into t6
    blt t2, t6, new_max_3     # Branch to new_max_3 if max < array[3]
    j done

new_max_3:
    sw t6, 0(t0)              # Store new max

done:                       
    lw a1, 0(t0)              # Load the address of max into a1
    li a0, 1                  # Load the system call number for print_int
    ecall                     # Make the system call     

    li a0, 10                 # Load the system call number for exit
    ecall                     # Exit the program  