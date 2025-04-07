; Write an ALP to perform block transfer operation of 10 numbers.

.model small
.data
        arr_s db 11H,12H,13H,14H,15H,16H,17H,18H,19H,20H
        arr_d db 10 dup(0)
.code
        mov ax, @data
        mov ds, ax
        mov cx, 0AH
        mov si, offset arr_s
        mov di, offset arr_d
     up:mov al, [si]
        mov [di], al
        inc si
        inc di
        loop up
        ends
        end
