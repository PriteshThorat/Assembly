.model small
.data
        arr  dw 1657H,1659H,1656H,1660H,1658H
        sml  dw ?
        larg dw ?
.code
        mov ax, @data
        mov ds, ax

        mov cx, 04H
        mov si, offset arr
        mov ax, [si]
     up:cmp ax, [si+2]
        jc dn
        mov ax, [si+2]
     dn:add si, 2H
        loop up
        mov sml, ax

        mov cx, 04H
        mov si, offset arr
        mov ax, [si]
    up1:cmp ax, [si+2]
        jnc dn1
        mov ax, [si+2]
    dn1:add si, 2H
        loop up1
        mov larg, ax

        ends
        end
