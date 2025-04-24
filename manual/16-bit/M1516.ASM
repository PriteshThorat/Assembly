.model small
.data
        num     dw -1657
        print_p db 'The Given Number is Positive$'
        print_n db 'The Given Number is Negative$'
.code
        mov ax, @data
        mov ds, ax

        mov ax, num
        ROL ax, 1H
        jc dn
        mov ah, 09H
        mov dx, offset print_p
        int 21H
        jmp exit
     dn:mov ah, 09H
        mov dx, offset print_n
        int 21H
   exit:

        mov ah, 4CH
        int 21H

        ends
        end
