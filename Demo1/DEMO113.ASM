; ALP to compare two strings

.model small
.data
        str_1   db 'MSBTE$'
        str_2   db ' MSBTE$'
        str_eq  db 'The Given String are Equal$'
        str_neq db 'The Given String are Not Equal$'
        len_1   db 0H
        len_2   db 0H
.code
        mov ax, @data
        mov ds, ax

        mov si, offset str_1
     up:mov al, [si]
        cmp al, '$'
        je dn
        inc len_1
        inc si
        jmp up
     dn:

        mov si, offset str_2
    up1:mov al, [si]
        cmp al, '$'
        je dn1
        inc len_2
        inc si
        jmp up1
    dn1:

        mov al, len_1
        cmp al, len_2
        jne exit

        mov si, offset str_1
        mov di, offset str_2
        mov cl, len_1
        mov ch, 00H
    up2:mov al, [si]
        cmp al, [di]
        jne exit
        inc si
        inc di
        loop up2

        mov dx, offset str_eq
        mov ah, 09H
        int 21H
        jmp exit1

   exit:mov dx, offset str_neq
        mov ah, 09H
        int 21H

  exit1:mov ah, 4CH
        int 21H

        ends
        end