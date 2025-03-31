.model small
add_num macro n1, n2
        mov ax, n1
        add ax, n2
        mov sum, ax
    endm
sub_num macro n1, n2
        mov ax, n1
        sub ax, n2
        mov sub_no, ax
    endm
.data
        num1    dw 1657H
        num2    dw 1656H
        sum     dw ?
        sub_no  dw ?
.code
        mov ax, @data
        mov ds, ax
        add_num num1, num2
        sub_num num1, num2
        ends
        end