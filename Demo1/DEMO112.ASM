; ALP for string operations such as string reverse and string copy

.model small
.data
        str_o db 'MSBTE$'
        str_r db 10 dup('$')
        str_c db 10 dup('$')
        len   db 0H
.code
        mov ax, @data
        mov ds, ax

        mov si, offset str_o
        mov di, offset str_c
     up:mov al, [si]
        cmp al, '$'
        je dn
        mov [di], al
        inc len
        inc di
        inc si
        jmp up
     dn:

        mov cl, len
        mov ch, 00H
        mov di, offset str_r
        dec si
    up1:mov al, [si]
        mov [di], al
        dec si
        inc di
        loop up1

        mov dx, offset str_c
        mov ah, 09H
        int 21H

        mov dx, offset str_r
        mov ah, 09H
        int 21H

        mov ah, 4CH
        int 21H

        ends
        end
