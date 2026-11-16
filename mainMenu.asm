# Bishop Avila, Simon Ho, Andrew Pahomi, Alexander Pedro
# Course CS2640
# Date 11-10-2026
# Main Ascii Menu for Final Project v1.0.0

.include "macrosProject.asm"
.data
menu_screen:
    .asciiz "*~~~~~~~~~~~~~S~S~S~Snake~~~~~~~~~~~~~~*\n"
    .asciiz "|                                      |\n"
    .asciiz "|                                      |\n"
    .asciiz "|            1. Start Game             |\n"
    .asciiz "|             2. Quit Game             |\n"
    .asciiz "|       3. Customize Your Snake        |\n"
    .asciiz "|           4. Attributions            |\n"
    .asciiz "|              5.   ^...^              |\n"
    .asciiz "|                                      |\n"
    .asciiz "|                                      |\n"
    .asciiz "*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*\n"

attribution_message: .asciiz "~~Created by Bishop Avila, Simon Ho, Andrew Pahomi (=^u^=), Alexander Pedro~~\n"
invalidStr: .asciiz "Wrong input! Try again!\n"
choiceStr: .asciiz "Please enter your choice: "


.text
main:
	
loop: 
	animated_str(menu_screen, 11, 20)
	
	animated_str(choiceStr, 1, 50)
	input_int($t0)
	
	beq $v0, 1, start
	beq $v0, 2, quit
	beq $v0, 3, customize
	beq $v0, 4, attribution
	#beq $v0, 5, other	placeholder
	
	animated_str(invalidStr, 1, 150)
	
	j loop
	
start:
	# Game start code
	j loop
	

quit:
	termination

customize:
	# Gets character value from user
	j loop

attribution:
	# prints the programmers
	animated_str(attribution_message, 1, 150)
	j loop

#other:	#placeholder
