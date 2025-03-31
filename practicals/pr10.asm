.model small
.data
        arr dw 1654H,1657H,1656H,1653H,1652H,1651H,1655H,1658H,1660H,1659H
.code
        mov ax, @data
        mov ds, ax
        mov bl, 0AH
     up:mov cx, 9H
        mov si, offset arr
   next:mov ax, [si]
        cmp ax, [si+2]
        jc dn
        xchg ax, [si+2]
        xchg ax, [si]
     dn:add si, 2H
        loop next
        dec bl
        jnz up
        ends
        end