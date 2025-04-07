; Write an assembly language program to find smallest number from an array of 10 numbers.

.model small
.data
        arr      db 12H,18H,19H,20H,15H,14H,11H,13H,16H,17H
        smallest db ?
.code
        mov ax, @data
        mov ds, ax
        mov cx, 09H
        mov si, offset arr
        mov al, [si]
     up:cmp al, [si+1]
        jc exit
        mov al, [si+1]
   exit:inc si
        loop up
        mov smallest, al
        ends
        end
