    .pos 0x0
    irmovq stack %,rsp
    call main
    halt

    .align 8
array:
    .quad 0x000d000d000d
    .quad 0x00c000c000c0
    .quad 0x0b000b000b00
    .quad 0xa000a000a000

main:
    irmovq array,%rdi
    irmovq $4,%rsi
    call sum
    ret

sum:
    irmovq $8,%r8
    irmovq $1,%r9
    xorq %rax,%rax
    andq %rsi,%rsi
    jmp test
loop:
    mrmovq (%rdi),%r10
    addq %r10,%rax
    addq %r8,%rdi
    subq %r9,%rsi
test:
    jne loop
    ret

    .pos 0x200
stack:
