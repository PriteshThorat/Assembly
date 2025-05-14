; ALP to perform block transfer operation

.model small
.data
        arr_s dw 1111H,1112H,1113H,1114H,1115H
        arr_d dw 5 dup(0)
.code
        mov ax, @data
        mov ds, ax

        mov si, offset arr_s
        mov di, offset arr_d
        mov cx, 05H
     up:mov ax, [si]
        mov [di], ax
        add si, 2H
        add di, 2H
        loop up

        ends
        end
