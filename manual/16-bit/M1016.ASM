.model small
.data
        arr dw 1657H,1660H,1656H,1659H,1658H
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
        xchg [si], ax
     dn:add si, 2H
        loop up
        dec bl
        jnz up1

        ends
        end
