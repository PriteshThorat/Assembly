.model small
.data
        num1    dw 1657H
        num2    dw 1656H
        sum_n   dw ?
        sub_n   dw ?
        mul_msb dw ?
        mul_lsb dw ?
        rem     dw ?
        quo     dw ?
.code
        mov ax, @data
        mov ds, ax

        mov ax, num1
        mov bx, num2
        call add_proc
        mov sum_n, ax

        mov ax, num1
        mov bx, num2
        call sub_proc
        mov sub_n, ax

        mov ax, num1
        mov bx, num2
        call mul_proc
        mov mul_msb, dx
        mov mul_lsb, ax

        mov ax, num1
        mov bx, num2
        call div_proc
        mov rem, dx
        mov quo, ax

   proc add_proc
        add ax, bx
     ret
    endp

  proc sub_proc
       sub ax, bx
    ret
   endp

   proc mul_proc
        mov dx, 00H
        mul bx
     ret
    endp
   proc div_proc
        mov dx, 00H
        div bx
     ret
    endp

        ends
        end
