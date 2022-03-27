section.text
    global main

main:


section.data
    ; allocating n.8 16-bit registers
    dw R0 0
    dw R1 1
    dw R2 2
    dw R3 3
    dw R4 4
    dw R5 5
    dw R6 6
    dw R7 7

    ; allocating special registers for high-level usage
    dw SP 0
    dw LCL 1
    dw ARG 2
    dw THIS 3
    dw THAT 4

; section.bss