# Bishop Avila, Simon Ho, Andrew Pahomi, Alexander Pedro
# Course CS2640
# Date 11-10-2026
# Macro File for Final Project v1.0.0
.macro animated_str (%str, %count, %time_delay) # Creating 3 parameters which will be taken in
	# Time delay is inputed in milliseconds str is the var name and count is inputed as int 
    	la   $t0, %str # Moving the address from the string variable inputed into reg t0 (base address)
    	li    $t1, %count # Loading the number of lines needed
    
# Will loop through the string and print out each character with the inputted time delay
next_char:

	lb   $t2, 0($t0) # Loading the base address of the string into reg t2         
	add $t0, $t0, 1 # Adds one in order to move through the chars (moves the pointer of the chars within the string one byte foward)       

	beqz  $t2, end_string # Checks if null terminator is present (asciiz not ascii) for the current char / byte

	li    $v0, 11 # 11 used for print char             
	move  $a0, $t2 # Moving the character from the string into the argument reg to be printed out
	syscall # Printing out

	li    $v0, 32   #  32 used for sleep       
	li    $a0, %time_delay # Loads the amount of time inputed by the user in milliseconds into the argument reg
	syscall # Pausing print / program

	j     next_char # Jumping back up to the top to print any remaining char

end_string:
	add $t1, $t1, -1 # Decreases the number of lines within a variable if one variable has multiple strings       
	bgtz  $t1, next_char # If there are more lines need to be printed out then it will start the loop again


.end_macro

.macro input_int(%reg) # Getting int input
	li $v0, 5 # 5 used for getting int input from user
	syscall # Getting input
	move %reg, $v0 # Storing the input into specified destination
.end_macro 

.macro print_int(%reg) # Printing ints
	li $v0, 1 # 1 used for print out an int
	move $a0, %reg # Moving the int store at x(represented by %reg) register into argument register
	syscall # Priting
.end_macro 


.macro print_char(%reg) # Printing chars
	li $v0, 11 # 11 used for printing out chars
	move $a0, %reg # Moving the char store at x(represented by %reg) register into argument register
	syscall # printing out char
.end_macro

.macro termination # Termination
	li $v0, 10
	syscall
.end_macro
