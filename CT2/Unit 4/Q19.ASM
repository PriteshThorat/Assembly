; Write an assembly language program to length of string.

.model small
.data
        str_s db 'Pritesh$'
        len_s db 0H
.code
        mov ax, @data
        mov ds, ax
        mov si, offset str_s
     up:mov al, [si]
        cmp al, '$'
        je exit
        inc len_s
        inc si
        jmp up
   exit:
        ends
        end
