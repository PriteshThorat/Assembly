; Write an assembly language program to multiply two 8-bit signed numbers.

.model small
.data
        num1 db 45
        num2 db -24
        res  dw ?
.code
        mov ax, @data
        mov ds, ax
        mov al, num1
        mov ah, 0H
        imul num2
        mov res, ax
        ends
        end
