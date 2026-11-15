# Andrew Pahomi
# Course CS2640
# Date 11-10-2026
# Main Ascii Menu for Final Project

.include "macros.asm"
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
.text

main:
print(menu_screen) 
