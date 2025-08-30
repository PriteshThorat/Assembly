; Write on ALP to count the number of positive and negative numbers in array.

.model small
.data
        arr     dw -24,24,-53,52,-45
        count_p db 0H
        count_n db 0H
.code
        mov ax, @data
        mov ds, ax

        mov cx, 05H
        mov si, offset arr
     up:mov ax, [si]
        ROL ax, 1H
        jc dn
        inc count_p
        jmp exit
     dn:inc count_n
   exit:add si, 2H
        loop up

        ends
        end
