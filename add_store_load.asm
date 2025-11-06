.text

main:
    addi $t0, $zero, 5       # $t0 = 5
    addi $t1, $zero, 10      # $t1 = 10
    add  $t2, $t0, $t1       # $t2 = $t0 + $t1 = 15
    sw   $t2, 0($zero)       # Store $t2 (15) at memory[0]
    lw   $t5, 0($zero)       # Load memory[0] into $t5
halt:
    beq $zero, $zero, halt    # Infinite loop (halt)
