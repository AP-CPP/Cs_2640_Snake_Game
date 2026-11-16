#  Bishop Avila, Simon Ho, Andrew Pahomi, Alexander Pedro
# Course CS2640
# Date 11-14-2026
# Final Project Frame v1.0.0
.data

newline: .asciiz "\n"

.text

main:

#row counter
li $t0, 0

#column counter
li $t1, 0

WallLoop:

#make horizontal walls
beq $t0, 0, makeHWall
beq $t0, 14, makeHWall

#make vertical walls
beq $t1, 0, makeVWall
beq $t1, 16, makeVWall

li $a0, 32 #space
j print_char

makeVWall:
    li $a0, 124 #vertical wall |

makeHWall:
    li $a0, 45 #horizontal wall -

print_char:
    li $v0, 11 
    syscall

    addi $t1, $t1, 1 #increment column counter
    blt $t1, 17, WallLoop #if column counter < 17, loop

    li $v0, 4 #print newline
    la $a0, newline
    syscall

    addi $t0, $t0, 1 #increment row counter
    blt $t0, 15, WallLoop #if row counter < 15, loop

    li $v0, 10 #exit program
    syscall
