.model small
.data
        str_o db 'Pritesh$'
        str_c db 20 dup('$')
        str_r db 20 dup('$')
        len   dw 0H
.code
        mov ax, @data
        mov ds, ax
        mov si, offset str_o
        mov di, offset str_c
   next:mov al, [si]
        cmp al, '$'
        je exit
        mov [di], al
        inc len
        inc di
        inc si
        jmp next
   exit:mov di, offset str_r
        dec si
        mov cx, len
     up:mov al, [si]
        mov [di], al
        inc di
        dec si
        loop up
        ends
        end