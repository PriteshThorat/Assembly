; Write a MACRO to perform 32 bit by 16-bit division of unsigned numbers.

.model small
div_num macro n1, n2
        mov ax, n1
        mov dx, 0000H
        div n2
    endm
.data
        num1 dw 4444H
        num2 dw 2222H
        rem  dw ?
        quo  dw ?
.code
        mov ax, @data
        mov ds, ax
        div_num num1, num2
        mov rem, dx
        mov quo, ax
        ends
        end
