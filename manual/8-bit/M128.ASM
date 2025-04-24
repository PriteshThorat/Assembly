.model small
.data
        str_s db 'Pritesh$'
        str_r db 10 dup('$')
        str_c db 10 dup('$')
        len_s db 0H
        print_s db 'The Source String is: $'
        print_r db ' The Reverse String is: $'
        print_c db ' The Copied String is: $'
.code
        mov ax, @data
        mov ds, ax

        mov ah, 09H
        mov dx, offset print_s
        int 21H
        mov dx, offset str_s
        int 21H

        mov si, offset str_s
     up:mov al, [si]
        cmp al, '$'
        je dn
        inc len_s
        inc si
        jmp up
     dn:dec si

        mov cl, len_s
        mov ch, 00H
        mov di, offset str_r
    up1:mov al, [si]
        mov [di], al
        dec si
        inc di
        loop up1

        mov ah, 09H
        mov dx, offset print_r
        int 21H
        mov dx, offset str_r
        int 21H

        mov si, offset str_s
        mov di, offset str_c
    up2:mov al, [si]
        cmp al, '$'
        je dn2
        mov [di], al
        inc si
        inc di
        jmp up2
    dn2:mov al, '$'
        mov [di], al

        mov ah, 09H
        mov dx, offset print_c
        int 21H
        mov dx, offset str_c
        int 21H

        mov ah, 4cH
        int 21H
        ends
        end
