.model small
.data
        str_s     db 'Pritesh$'
        str_d     db ' Pritesh$'
        len_s     db 0H
        len_d     db 0H
        print_eq  db 'The String are Equal$'
        print_neq db 'The String are Not Equal$'
.code
        mov ax, @data
        mov ds, ax

        mov si, offset str_s
     up:mov al, [si]
        cmp al, '$'
        je dn
        inc len_s
        inc si
        jmp up
     dn:

        mov si, offset str_d
    up1:mov al, [si]
        cmp al, '$'
        je dn1
        inc len_d
        inc si
        jmp up1
    dn1:

        mov al, len_s
        cmp al, len_d
        jne exit

        mov cl, len_s
        mov ch, 00H
        mov si, offset str_s
        mov di, offset str_d
    up2:mov al, [si]
        cmp al, [di]
        jne exit
        inc si
        inc di
        loop up2

        mov ah, 09H
        mov dx, offset print_eq
        int 21H
        jmp exit1
        
   exit:mov ah, 09H
        mov dx, offset print_neq
        int 21H

  exit1:mov ah, 4CH
        int 21H

        ends
        end
