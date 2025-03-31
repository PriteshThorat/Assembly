.model small
.data
        str_f    db 'Pritesh$'
        str_s    db 'Pritesh$'
        is_equal db 0H
        len_f    dw 0H
        len_s    dw 0H
.code
        mov ax, @data
        mov ds, ax
        mov si, offset str_f
        mov di, offset str_s
     up:mov al, [si]
        cmp al, '$'
        je down
        inc len_f
        inc si
        jmp up
   down:
  upper:mov al, [di]
        cmp al, '$'
        je dn
        inc len_s
        inc di
        jmp upper
     dn:mov ax, len_f
        cmp ax, len_s
        jne exit
        sub si, len_f
        sub di, len_s
        mov cx, len_f
 upside:mov al, [si]
        mov bl, [di]
        cmp al, bl
        jne exit
        inc si
        inc di
        loop upside
        inc is_equal
   exit:ends
        end