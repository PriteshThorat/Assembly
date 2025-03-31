.model small
.data
        num        dw 1657H
        zero_count db 0H
        one_count  db 0H
.code
        mov ax, @data
        mov ds, ax
        mov cx, 10H
        mov ax, num
     up:ror ax, 1H
        jc dn
        inc zero_count
        jmp down
     dn:inc one_count
   down:loop up
        ends
        end