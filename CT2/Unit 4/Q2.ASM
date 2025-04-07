; Write on ALP to count the number of positive and negative numbers in array.

.model small
.data
        arr     db 5,-5,44,-35,90
        count_p db 0H
        count_n db 0H
.code
        mov ax, @data
        mov ds, ax
        mov cx, 5H
        mov ah, 00H
        mov si, offset arr
     up:mov al, [si]
        rol al, 1H
        jc down
        inc count_p
        jmp exit
   down:inc count_n
   exit:inc si
        loop up
        ends
        end
