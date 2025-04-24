.model small
.data
        str1 db 'Pritesh$'
        str2 db ' Thorat$'
        len1 db 0H
        len2 db 0H
.code
        mov ax, @data
        mov ds, ax

        mov si, offset str1
     up:mov al, [si]
        cmp al, '$'
        je dn
        inc len1
        inc si
        jmp up

     dn:mov di, offset str2
    up1:mov al, [di]
        cmp al, '$'
        je dn1
        mov [si], al
        inc len2
        inc si
        inc di
        jmp up1
    dn1:mov al, '$'
        mov [si], al

        mov ah, 09H
        mov dx, offset str1
        int 21H

        mov ah, 4CH
        int 21H
        ends
        end
