; Write an ALP using macro to perform multiplication of two 8 bit unsigned numbers.

.model small
.data
        num1 db 45H
        num2 db 24H
        res  dw ?
.code
        mov ax, @data
        mov ds, ax

        mov ah, 00H
        mov al, num1
        mul num2
        mov res, ax

        ends
        end
