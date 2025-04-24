.model small
.data
        num1  dw 1657H
        num2  dw 1656H
        sum_n dw ?
        sub_n dw ?
.code
        mov ax, @data
        mov ds, ax

        mov ax, num1
        add ax, num2
        mov sum_n, ax

        mov ax, num1
        sub ax, num2
        mov sub_n, ax

        ends
        end
