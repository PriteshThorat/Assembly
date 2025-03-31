.model small
.data
        str_f db 'Pritesh$'
        str_s db ' Thorat$'
        str_n db 20 dup('$')
        len   db 0
.code
        mov ax, @data
        mov ds, ax
        mov si, offset str_f
        mov di, offset str_n
   next:mov al, [si]
        cmp al, '$'
        je down
        mov [di], al
        inc len
        inc di
        inc si
        jmp next
   down:mov si, offset str_s
     up:mov al, [si]
        cmp al, '$'
        je exit
        mov [di], al
        inc len
        inc di
        inc si
        jmp up
   exit:ends
        end
        