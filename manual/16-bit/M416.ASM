.model small
.data
        num1 dw 1657
        num2 dw -1656
        mul_lsb dw ?
        mul_msb dw ?
.code
        mov ax, @data
        mov ds, ax

        mov dx, 00H
        mov ax, num1
        imul num2

        mov mul_lsb, ax
        mov mul_msb, dx

        ends
        end
