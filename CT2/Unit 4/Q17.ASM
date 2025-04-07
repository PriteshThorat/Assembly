; Write an assembly language program to add two 16-bit BCD numbers.

.model small
.data
        num1 dw 1111H
        num2 dw 3333H
        res  dw ?
.code
        mov ax, @data
        mov ds, ax
        mov ax, num1
        add ax, num2
        DAA
        mov res, ax
        ends
        end
