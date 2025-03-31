.model small
.data
        arr dw 1655H,1652H,1654H,1667H,1652H,1653H,1657H,1660H,1658H,1651H
        sml dw ?
.code
        mov ax, @data
        mov ds, ax
        mov cx, 0AH
        mov si, offset arr
        mov ax, [si]
        add si, 2H
     up:cmp ax, [si]
        jc down
        mov ax, [si]
   down:add si, 2H
        loop up
        mov sml, ax
        ends
        end