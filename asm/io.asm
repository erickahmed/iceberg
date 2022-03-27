segment .text
    global main

main:


segment .data
    dt screen 16384     ; 16-bit screen memory allocation
    dt kbd 24576        ; 16-bit keyboard memory allocation