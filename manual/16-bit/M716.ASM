.model small
.data
        arr_s dw 1656H,1657H,1658H,1659H,1660H
        arr_d dw 5 dup(0)
.code
        mov ax, @data
        mov ds, ax

        mov cx, 05H
        mov si, offset arr_s
        mov di, offset arr_d
     up:mov ax, [si]
        mov [di], ax
        add si, 2H
        add di, 2H
        loop up

        ends
        end
