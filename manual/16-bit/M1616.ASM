.model small
.data
        num     dw 1656H
        count_o db 0H
        count_z db 0H
.code
        mov ax, @data
        mov ds, ax

        mov cx, 10H
        mov ax, num
     up:rol ax, 1H
        jc dn
        inc count_z
        jmp exit
     dn:inc count_o
   exit:
        loop up

        ends
        end
