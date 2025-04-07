; Write an ALP to arrange numbers in array in descending order.

.model small
.data
        arr db 11H,12H,13H,14H,15H 
.code
        mov ax, @data
        mov ds, ax
        mov bl, 05H
    up1:mov cx, 04H
        mov si, offset arr
        mov al, [si]
     up:cmp al, [si+1]
        jnc down
        xchg al, [si+1]
        xchg [si], al
   down:inc si
        loop up
        dec bl
        jnz up1
        ends
        end
