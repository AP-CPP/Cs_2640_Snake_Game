# Bishop Avila, Simon Ho, Andrew Pahomi, Alexander Pedro
# Course CS2640
# Date 11-10-2026
# Score Tracker for Final Project v1.0.0
# Snake Score tracker:
# Will need to call/ or be called so will need  a macro 

.data
scoremeg: .asciiz "Score: "
score: .word 0

.text	
mian: 
	#Load score in memory
	lw $t0, score #load the score into temporary memory
	
	#Add to score
	add $t0, $t0,  10 
	
	#Save the updated score 
	sw  $s0, score
	
	#Print score
	li, $v0, 4
	la, $a0, scoremeg
	syscall
	
	#Print the numbers
	li, $v0, 1
	lw, $a0, score
	syscall
	
	#Maybe add a way for previous score to be seen?
	#Find a way so that it updates in real time?
		
	#End
	    # add jump to main file for game.
	
