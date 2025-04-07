; Write an ALP to multiply two 16 bit signed numbers.

.model small
.data
        num1     dw -4353
        num2     dw 3241
        mul_msb  dw ?
        mul_lsb  dw ?
.code
        mov ax, @data
        mov ds, ax
        mov ax, num1
        mov dx, 00H
        imul num2
        mov mul_lsb, ax
        mov mul_msb, dx
        ends
        end
