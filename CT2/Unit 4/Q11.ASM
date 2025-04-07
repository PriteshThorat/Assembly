; Write an ALP to concatenate two strings.

.model small
.data
        str_f db 'Pritesh$'
        str_s db ' Thorat$'
        new_line db 0Dh, 0Ah, '$'
.code
        mov ax, @data
        mov ds, ax
        mov ah, 09H
        mov dx, offset str_f
        int 21H
        mov dx, offset new_line
        int 21h
        mov dx, offset str_s
        int 21H
        mov dx, offset new_line
        int 21H
        mov si, offset str_f
        mov di, offset str_s
     up:mov al, [si]
        cmp al, '$'
        je dn
        inc si
        jmp up
     dn:
    up1:
        mov al, [di]
        cmp al, '$'
        je exit
        mov [si], al
        inc di
        inc si
        jmp up1
   exit:
        mov al, '$'
        mov [si], al
        mov ah, 09H
        mov dx, offset str_f
        int 21H
        mov ah, 4ch
        int 21h
        ends
        end
