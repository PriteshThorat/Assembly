; Write an ALP to count ODD and EVEN numbers in array.

.model small
.data
        arr     db 34H,53H,74H,24H,75H
        count_o db 0H
        count_e db 0H
.code
        mov ax, @data
        mov ds, ax

        mov cx, 05H
        mov si, offset arr
     up:mov al, [si]
        ROR al, 1H
        jc dn
        inc count_e
        jmp exit
     dn:inc count_o
   exit:inc si
        loop up

        ends
        end
