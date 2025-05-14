; ALP to check a given number is positive or negative

.model small
.data
        num dw -1111
        str_p db 'The Given Number is Positive$'
        str_n db 'The Given Number is Negative$'
.code
        mov ax, @data
        mov ds, ax

        mov ax, num
        ROL ax, 1H
        jc dn
        mov AH, 09H
        mov dx, offset str_p
        int 21H
        jmp exit
     dn:mov AH, 09H
        mov dx, offset str_n
        int 21H
   exit:

        mov AH, 4CH
        int 21H

        ends
        end
