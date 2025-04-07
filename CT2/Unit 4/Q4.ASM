; Write an ALP to count ODD and EVEN numbers in array.

.model small
.data
        arr     db 45H,25H,35H,74H,34H
        count_e db 0H
        count_o db 0H
.code
        mov ax, @data
        mov ds, ax
        mov cx, 5H
        mov si, offset arr
     up:mov al, [si]
        ror al, 1H
        jc down
        inc count_e
        jmp exit
   down:inc count_o
   exit:inc si
        loop up
        ends
        end
