# y86-64 assembler and emulator, written in C.

## Assembler
The assembler takes as input a filename containing the source y86 assembly code, and returns a .yo object file containing machine code to be run on the y86 emulator. Generate the asm.exe file by running ```gcc -o asm hash.c assembler.c```

The opcodes.txt file contains information about y86 opcodes, registers, and assembler directives that are loaded into a hashtable at program start. It should be placed in the same directory as the asm.exe file generated by the compiler.

In the assembler's first pass, it checks for symbols/labels, storing them in a table along with the location counter, and processes directives.

In the assembler's second pass, it generates object code by converting assembly language mnemonics into machine code, and resolves symbols checked in the first pass. Finally, it writes out the generated code to an .oy file.
## Emulator

TODO:

1. ~~Fix irmovq - add F~~
2. Fix loc_counter
3. immediate support
4. ~~fix buffer_check~~
5. pushq/popq- add F
