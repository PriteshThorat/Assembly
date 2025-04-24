.model small
.data
        num1 dw 1657
        num2 dw -1656
        rem  dw ?
        quo  dw ?
.code
        mov ax, @data
        mov ds, ax

        mov dx, 00H
        mov ax, num1
        idiv num2
        mov rem, dx
        mov quo, ax

        ends
        end
