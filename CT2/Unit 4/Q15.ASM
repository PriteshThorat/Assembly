; Write an ALP to find largest number in array of elements 10 H, 24 H, 02 H,05 H, 17 H.

.model small
.data
        arr     db 10H,24H,02H,05H,17H
        largest db ?
.code
        mov ax, @data
        mov ds, ax
        mov cx, 05H
        mov si, offset arr
        mov al, [si]
     up:cmp al, [si+1]
        jnc exit
        mov al, [si+1]
   exit:inc si
        loop up
        mov largest, al
        ends
        end
