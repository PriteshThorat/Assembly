; Write an assembly language program smallest among of 10 numbers using MACRO.

.model small
sml_num macro ar
        mov cx, 0AH
        mov si, offset ar
        mov al, [si]
     up:cmp al, [si+1]
        jc dn
        mov al, [si+1]
     dn:inc si
        loop up
    endm
.data
        arr      db 15H,16H,13H,14H,17H,12H,19H,18H,11H,10H
        smallest db ?
.code
        mov ax, @data
        mov ds, ax
        sml_num arr
        mov smallest, al
        ends
        end
