.data
    A   : .word  1, -14, 10, -5, 9
    n : .word 5
.text
	la $s0, A          # pointer to current element
  	li $s1, 0          #index
  	li $s2, 0	   #max
  	li $s3 5
loop:
slt $t2,$s1,$s3
beq $t2,$0,endloop
add $t1,$s1,$s1
add $t1,$t1,$t1
add $t1,$t1,$s0
lw $t0,0($t1)
abs $t0,$t0
slt $t6,$s2,$t0
beq $t6,$0,endif
add $s2,$0,$t0
endif:
addi $s1,$s1,1
j loop
endloop: