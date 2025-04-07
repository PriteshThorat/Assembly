; Write an ALP to count number of 'ZEROS' in 8 bit number.

.model small
.data
        num     db 45H
        count_0 db 0H
.code
        mov ax, @data
        mov ds, ax
        mov cx, 8H
        mov al, num
     up:ROL al, 01H
        jc dn
        inc count_0
     dn:loop up
        ends
        end
