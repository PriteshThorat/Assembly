.model small
  add_m macro a, b
        mov ax, a
        add ax, b
    endm

  sub_m macro a, b
        mov ax, a
        sub ax, b
    endm

  mul_m macro a, b
        mov dx, 00H
        mov ax, a
        mul b
    endm

  div_m macro a, b
        mov dx, 00H
        mov ax, a
        div b
    endm
.data
        num1    dw 1657H
        num2    dw 1656H
        add_n   dw ?
        sub_n   dw ?
        mul_msb dw ?
        mul_lsb dw ?
        rem     dw ?
        quo     dw ?
.code       
        mov ax, @data
        mov ds, ax

        add_m num1, num2
        mov add_n, ax

        sub_m num1, num2
        mov sub_n, ax

        mul_m num1, num2
        mov mul_msb, dx
        mov mul_lsb, ax
        
        div_m num1, num2
        mov rem, dx
        mov quo, ax

        ends
        end
