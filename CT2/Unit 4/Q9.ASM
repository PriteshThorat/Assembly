; Write an ALP to find largest number in the array.

.model small
.data
        arr      db 16H,34H,14H,21H,83H
        smallest db ?
.code
        mov ax, @data
        mov ds, ax
        mov cx, 04H
        mov si, offset arr
        mov al, [si]
     up:cmp al, [si+1]
        jnc exit
        mov al, [si+1]
   exit:inc si
        loop up
        mov smallest, al
        ends
        end
