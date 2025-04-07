; Write an ALP to count odd numbers in the array of 10 numbers.

.model small
.data
        arr db 11H,12H,13H,14H,15H,16H,17H,18H,19H,20H
        count_o db 0H
.code
        mov ax, @data
        mov ds, ax
        mov cx, 0AH
        mov si, offset arr
     up:mov al, [si]
        ROR al, 1H
        jnc exit
        inc count_o
   exit:inc si
        loop up
        ends
        end
