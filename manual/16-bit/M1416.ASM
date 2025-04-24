.model small
.data
        num     dw 1657H
        print_e db 'The Given Number is Even$'
        print_o db 'The Given Number is Odd$'
.code
        mov ax, @data
        mov ds, ax

        mov ax, num
        ror ax, 1H
        jc dn
        mov ah, 09H
        mov dx, offset print_e
        int 21H
        jmp exit
     dn:mov ah, 09H
        mov dx, offset print_o
        int 21H

   exit:mov ah, 4CH
        int 21H

        ends
        end
