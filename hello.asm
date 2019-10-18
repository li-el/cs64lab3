# hello.asm
# A "Hello World" program in MIPS Assembly for CS64
#
#  Data Area - allocate and initialize variables
.data
	# TODO: Write your string definitions here
	str1: .asciiz "Choose an integer number between 0 and 1000:\n"
	str2: .asciiz "Hello World!\n"
	str3: .asciiz "User chose "
	str4: .asciiz ". Truly a wise choice.\n"
#Text Area (i.e. instructions)
.text
main:
	li $v0, 4
	la $a0, str1
	syscall
	li $v0, 5
	syscall
	move $t0, $v0
	li $v0, 4
	la $a0, str2
	syscall
	la $a0, str3
	syscall
	li $v0, 1
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, str4
	syscall
	# TODO: Write your code here

exit:
	# Exit
	li $v0, 10
	syscall

