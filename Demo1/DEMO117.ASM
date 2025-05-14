; ALP to perform arithmetic operations on given numbers using procedure

.model small
.data
        num1    dw 5678H
        num2    dw 1234H
        sum_n   dw ?
        sub_n   dw ?
        rem     dw ?
        quo     dw ?
        mul_lsb dw ?
        mul_msb dw ?
.code
        mov ax, @data
        mov ds, ax

        call sum_num
        call sub_num
        call mul_num
        call div_num

sum_num proc
        mov ax, num1
        add ax, num2
        mov sum_n, ax
     ret
    endp
sub_num proc
        mov ax, num1
        sub ax, num2
        mov sub_n, ax
     ret
    endp
mul_num proc
        mov ax, num1
        mov dx, 00H
        mul num2
        mov mul_msb, dx
        mov mul_lsb, ax
     ret
    endp
div_num proc
        mov ax, num1
        mov dx, 00H
        div num2
        mov rem, dx
        mov quo, ax
     ret
    endp

        ends
        end
