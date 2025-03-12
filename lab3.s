
.data 
array: .word 7, -3, 43, 19    # Store array in data memory 
max: .word -100               # Store max in data memeory and initialize to -100
index: .word 0                # Store index in data memory and initialize to 0

.text                         # Start of instruction memeory 
main: 
    la t0 max                 # Load address of max into t0  
    la t1 array               # Load address of array into t1
    la t2 index               # Load address of index into t2

    lw t3, 0(t0)              # Load max into t3
    lw t5, 0(t2)              # Load index into t5

    li s1, 4                  # Load compare 4 into s1

loop:
    bge t5, s1, end           # Branch to skip if index >= 4

    lw t4, 0(t1)              # Load array[i] value into t4
    blt t3, t4, new_max       # Branch to new_max if max < array[index]

skip: 
    addi t1, t1, 4            # Increment array address by 4 bytes
    addi t5, t5, 1            # Increment index by 1
    j loop

new_max:
    sw t4, 0(t0)              # Store new max
    addi t5, t5, 1            # Increment index by 1
    j skip

end: 
    add a1, t0, zero          # Copy the address of max into t0
    li a0, 1                  # Load the system call number for print_int
    ecall                     # Make the system call