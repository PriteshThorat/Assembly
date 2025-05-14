; ALP to perform arithmetic operations on given numbers using macro

.model small
add_num macro n1, n2
        mov ax, n1
        add ax, n2
        mov sum_n, ax
    endm
sub_num macro n1, n2
        mov ax, n1
        sub ax, n2
        mov sub_n, ax
    endm
mul_num macro n1, n2
        mov ax, n1
        mov dx, 00H
        mul n2
        mov mul_lsb, ax
        mov mul_msb, dx
    endm
div_num macro n1, n2
        mov ax, n1
        mov dx, 00H
        div n2
        mov rem, dx
        mov quo, ax
    endm
.data
        num1    dw 5678H
        num2    dw 1234H
        sum_n   dw ?
        sub_n   dw ?
        mul_msb dw ?
        mul_lsb dw ?
        rem     dw ?
        quo     dw ?
.code
        mov ax, @data
        mov ds, ax

        add_num num1, num2
        sub_num num1, num2
        mul_num num1, num2
        div_num num1, num2

        ends
        end
