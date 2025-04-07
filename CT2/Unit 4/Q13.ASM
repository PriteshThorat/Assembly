; Write an ALP to add two 16-bit numbers.

.model small
.data
        num1 dw 1234H
        num2 dw 3453H
        res  dw ?
.code
        mov ax, @data
        mov ds, ax
        mov ax, num1
        add ax, num2
        mov res, ax
        ends
        end
