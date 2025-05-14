; ALP to perform division of two unsigned and signed numbers

.model small
.data
        num1_us dw 5678H
        num2_us dw 1234H
        rem_usm dw ?
        quo_usl dw ?

        num1_s dw -5678 
        num2_s dw 1234
        rem_sm dw ?
        quo_sl dw ?
.code
        mov ax, @data
        mov ds, ax

        mov ax, num1_us
        mov dx, 00H
        div num2_us
        mov rem_usm, dx
        mov quo_usl, ax

        mov ax, num1_s
        mov dx, 00H
        idiv num2_s
        mov rem_sm, dx
        mov quo_sl, ax

        ends
        end
