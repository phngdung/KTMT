.data
arr: .word 1,2,3,4
.text
	addi $s1, $zero, -1
	la   $s2, arr
	li   $s3, 4
	li $s4,  1
	li $s5, 0 
	
loop:
	add $s1,$s1,$s4 	#i=i+step
	add $t1,$s1,$s1 	#t1=2*s1
	add $t1,$t1,$t1 	#t1=4*s1
	add $t1,$t1,$s2	 	#t1 store the address 
	lw $t0,0($t1) 		#load value of arr[i] in$t
	add $s5,$s5,$t0		#sum=sum+arr[i]
	beqz $t0, loop
	