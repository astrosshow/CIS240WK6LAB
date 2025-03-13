.data                       # Data memory 
num1: .word 5               # Store 5 (num1) in data memory 
num2: .word 7               # Store 7 (num2) in data memory 
result: .word 0             # initialize result with 0 

.txt                        # Instruction memory
main: 
    la t0, num1             # Load address of num1 to t0
    la t1, num2             # Load address of num2 to t1
    la t2, result           # Load address of result to t2

    lw t4, 0(t0)            # Load num1 into t4
    lw t5, 4(t1)            # Load num2 into t5
    lw s1, 0(t2)            # Load result into s1

func_addtwoNums: 
    addi t4, t5, zero       # Function that adds two numbers
    
func_addOne:
    addi result, zero, 1    # Function that adds one 

    