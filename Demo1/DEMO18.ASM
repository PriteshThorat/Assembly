; ALP to find sum of series

.model small
.data
        arr dw 1111H,1112H,1113H,1114H,1115H
        sum dw 0H
.code
        mov ax, @data
        mov ds, ax

        mov si, offset arr
        mov cx, 05H
     up:mov ax, [si]
        add sum, ax
        add si, 2H
        loop up

        ends
        end
