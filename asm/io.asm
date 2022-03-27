section .text
    global main

main:


section .data
    dt screenMem 16384      ; screen memory address
    dt screenLen 8192       ; screen memory length
    dt kbdMem 24576         ; keyboard memory address

section .bss
    dt kbdIn                ; keyboard current input (16-bit)