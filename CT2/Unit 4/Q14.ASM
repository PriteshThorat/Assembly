; Write an ALP to find length of string.

.model small
.data
        str_s db 'Pritesh$'
        len   db 0H
.code
        mov ax, @data
        mov ds, ax
        mov si, offset str_s
     up:mov al, [si]
        cmp al, '$'
        je exit
        inc len
        inc si
        jmp up
   exit:
        ends
        end
