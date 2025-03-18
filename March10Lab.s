.data                                                   # data memory 
    array: .word 2, 5, 3, 8, 9, 7, 12, 4, -3, 3, 7, 5   # array of integers
    array_final: .space 48                              # space for the final array

.text                                                   # instruction memory 
    li s0, 4                                            # store int size in s0 (4 bytes) 
    li s1, 12                                           # store array size in s1 (48bytes / 4bytes), is also comparator for loop

    li t0, 0                                            # store i in t0 
    li t1, 0                                            # store j in t1
    
    li s2, 3                                            # store 3 conditinal in s2
    li s3, 7                                            # store 7 conditinal in s3

    la t2, array                                        # store array address in t2
    la t4, array_final                                  # store array_final address in t4

loop: 
    bge t0, s1, finished_loop                           # if i >= array_size then finished_loop
    
    lw t3, 0(t2)                                        # store the first element in the array to t3
    beq t3, s2, skip                                    # if arr[i] == 3 then skip 
    beq t3, s3, skip                                    # if arr[i] == 7 then skip

    sw t3, 0(t4)                                        # store the element in array_final
    addi t4, t4, 4                                      # move to the next index in array_final
    addi t1, t1, 1                                      # increment j 

skip: 
    addi t2, t2, 4                                      # move to the next element 
    addi t0, t0, 1                                      # increment i 
    j loop                                              # jump back to loop

finished_loop: 
    # return j (t1) 