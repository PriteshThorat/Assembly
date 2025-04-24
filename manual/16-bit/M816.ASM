.model small
.data
        arr dw 1656H,1657H,1658H,1659H,1660H
        sum dw 0H
.code
        mov ax, @data
        mov ds, ax

        mov cx, 05H
        mov si, offset arr
     up:mov ax, [si]
        add sum, ax
        add si, 2H
        loop up

        ends
        end
