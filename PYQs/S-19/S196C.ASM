; Write an ALP to arrange numbers in array in descending order.

.model small
.data
        arr dw 2356H,2642H,6425H,3525H,6425H
.code
        mov ax, @data
        mov ds, ax

        mov bl, 05H
    up1:mov cx, 04H
        mov si, offset arr
     up:mov ax, [si]
        cmp ax, [si+2]
        jnc dn
        xchg ax, [si+2]
        xchg ax, [si]
     dn:add si, 2H
        loop up
        dec bl
        jnz up1

        ends
        end
