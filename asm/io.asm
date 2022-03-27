.model small

section .data
    dt screenMem 16383      ; screen memory address
    dt screenLen 8192       ; screen memory length
    dt kbdMem 24575         ; keyboard memory address

section .bss
    dt kbdIn                ; keyboard input value

section .text
    global main

main:
            ; keyboard current input (16-bit)