# Andew Pahomi
#CS 2640 
#11-2-2026

.macro generic_print_string(%str)
  li $v0, 4
  la $a0, %str
  syscall
.end_macro

.macro generic_print_integer(%int)
  li $v0, 1
  la $a0, %int
  syscall
.end_macro

.
