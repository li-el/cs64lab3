# Arithmetic.asm
# A simple calculator program in MIPS Assembly for CS64
#

.text
main:
	li $v0, 5
	syscall
	move $t0, $v0
	li $v0, 5
	syscall
	sub $t0, $t0, $v0
	add $t0, $t0, $t0
	li $v0, 5
	syscall
	move $t1, $v0
	li $t2, 3
	mult $t1, $t2
	mflo $t1
	add $t0, $t0, $t1
	li $v0, 1
	move $a0, $t0
	syscall

	# TODO: Write your code here

exit:
	# Exit
	li $v0, 10
	li $a0, 0
	syscall

