.model small
.data
        num1    dw 1657H
        num2    dw 1656H
        sum     dw ?
        sub_no  dw ?
        mul_lsb dw ?
        mul_msb dw ?
        rem     dw ?
        quo     dw ?
.code
        mov ax, @data
        mov ds, ax
        call add_num
        mov sum, ax
        call sub_num
        mov sub_no, ax
        call mul_num
        mov mul_lsb, ax
        mov mul_msb, dx
        call div_num
        mov rem, dx
        mov quo, ax
add_num proc
        mov ax, num1
        add ax, num2
     ret
    endp
sub_num proc
        mov ax, num1
        sub ax, num2
     ret
    endp
mul_num proc
        mov ax, num1
        mul num2
     ret
    endp
div_num proc
        mov dx, 0H
        mov ax, num1
        div num2
     ret
    endp
        ends
        end