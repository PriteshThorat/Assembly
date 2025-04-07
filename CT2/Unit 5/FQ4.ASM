; Write an ALP using macro to perform multiplication of two 8 bit unsigned numbers.

.model small
mul_num macro n1, n2
        mov al, n1
        mov ah, 00H
        mul n2
    endm
.data
        num1 db 34H
        num2 db 23H
        res  dw ?
.code
        mov ax, @data
        mov ds, ax
        mul_num num1, num2
        mov res, ax
        ends
        end
