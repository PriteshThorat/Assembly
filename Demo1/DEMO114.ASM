; ALP to check a given number is odd or even

.model small
.data
        num dw 1112H
        str_e db 'The Given Number is Even$'
        str_o db 'The Given Number is Odd$'
.code
        mov ax, @data
        mov ds, ax

        mov ax, num
        ror ax, 1H
        jc dn
        mov dx, offset str_e
        mov ah, 09H
        int 21H
        jmp exit
     dn:mov dx, offset str_o
        mov ah, 09H
        int 21H
   exit:

        mov ah, 4CH
        int 21H

        ends
        end
