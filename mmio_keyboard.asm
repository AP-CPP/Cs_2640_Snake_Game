# Andrew Pahomi
# Course CS2640
# Date 11-15-2026
# Keyboard and MMIO Link for Final Project v1.0.0
.data

.text
keyboard_input:
	li $t0,  0xffff0000 # According to the help in the MMIO detecting keystrokes are stored in 
		           # 0xffff0004 (default address) the low byte order while the ready bit will be stored in 
		           # 0xffff0000 (another default address) after getting an input the bit will be reset back to zero
		           # which will be checked with a bitwise op
	lw $t1, 0($t0) # Getting the status of the MMIO  will be loading 
	andi $t1, $t1, 1 # Comparing the bits to one in order to check if the ready bit is one or zero
	beqz $t1, menu_return # If the bit was zero then it will branch to the return menu
	
	lw $t2, 4($t0)
	andi # Will be completed later
	# Will add caps error checking and any other checks for MMIO 
	
	
	beq $t2, 100, right
	beq $t2, 97, left
	beq $t2, 119, up
	beq $t2, 115, down
right:
	# Move right macro will be impleted to call here
left:
	# Move left macro  will be impleted to call here
up:
	# Move up macro  will be impleted to call here
down: 
	# Move down macro  will be impleted to call here
menu_return:
# returing to main 