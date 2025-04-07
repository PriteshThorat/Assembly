; Write an assembly language program to count numbers of 'ONE's in 8-bit number.

.model small
.data
        num     db 45H
        count_1 db 0H
.code
        mov ax, @data
        mov ds, ax
        mov cx, 08H
        mov al, num
     up:rol al, 01H
        jnc down
        inc count_1
   down:loop up
        ends
        end
