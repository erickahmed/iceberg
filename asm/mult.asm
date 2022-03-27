.model small

section
    global main

section .data
    a db 8
    b db 3

main:
    ; initialization
    mov ax, @data
    mov ds, ax
    mov ah, 0

    ; load numbers on registers
    mov ax, a
    mov bl, b

    ; multiplication of the two registers
    mul bl

    ; save result
    mov dl, al
    add dl, 48

    mov ah, 02
    int 21h

    ; terminate program
    mov ah, 04Ch
    int 21h
    end