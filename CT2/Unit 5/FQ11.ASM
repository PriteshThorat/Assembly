; Write an ALP for addition of series of 8-bit number using procedure.

.model small
.data
        arr db 11H,12H,13H,14H,15H
        sum db 0H
.code
        mov ax, @data
        mov ds, ax
        mov si, offset arr
        call sum_arr
sum_arr proc
        mov cx, 05H
     up:mov al, [si]
        add sum, al
        inc si
        loop up
     ret
    endp
        ends
        end
