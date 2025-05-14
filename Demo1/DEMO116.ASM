; ALP to count number of 0 and 1 in a given number

.model small
.data
        num     dw 1111H
        count_1 db 0H
        count_0 db 0H
.code
        mov ax, @data
        mov ds, ax

        mov ax, num
        mov cx, 10H
     up:ROL ax, 1H
        jc dn
        inc count_0
        jmp exit
     dn:inc count_1
   exit:loop up

        ends
        end
