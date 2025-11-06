.text
.globl main

main:
    # Initialize registers
    addi $t0, $zero, 15     # $t0 = 15
    addi $t1, $zero, 10     # $t1 = 10
    addi $t2, $zero, 0      # $t2 = 0 (accumulator)

    # Compare and accumulate
    slt $t3, $t1, $t0       # $t3 = 1 since 10 < 15
    beq $t3, $zero, skip    # Skip addition if false (not taken)
    add $t2, $t0, $t1       # $t2 = 15 + 10 = 25

skip:
    sub $t4, $t2, $t1       # $t4 = 25 - 10 = 15
    and $t5, $t4, $t0       # $t5 = 15 AND 15 = 15
    or  $t6, $t4, $t1       # $t6 = 15 OR 10 = 15

    # Store and reload results
    sw $t2, 200($zero)      # Store 25 at memory[200]
    sw $t5, 204($zero)      # Store 15 at memory[204]
    lw $s0, 200($zero)      # Load memory[200] ? $s0 (25)
    lw $s1, 204($zero)      # Load memory[204] ? $s1 (15)

# --- Infinite Halt ---
#halt:
 #   beq $zero, $zero, halt  # Infinite loop (halt)
