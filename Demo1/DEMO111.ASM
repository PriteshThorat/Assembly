; ALP to find the length of string and concatanate two strings

.model small
  print macro str
        mov ah, 09H
        mov dx, offset str
        int 21H
    endm
   term macro
        mov ah, 4CH
        int 21H
    endm
.data
        str_1 db 'MSBTE$'
        str_2 db ' Board$'
        len_1 db 0H
        len_2 db 0H
        print_1 db ' The First String is: $'
        print_2 db ' The Second String is: $'
        print_cat db ' The Concatanate String is: $'
.code
        mov ax, @data
        mov ds, ax

        print print_1
        print str_1
        print print_2
        print str_2

        mov si, offset str_1
     up:mov al, [si]
        cmp al, '$'
        je dn
        inc len_1
        inc si
        jmp up
     dn:

        mov di, offset str_2
    up1:mov al, [di]
        cmp al, '$'
        je dn1
        mov [si], al
        inc di
        inc si
        inc len_2
        jmp up1
    dn1:mov al, '$'
        mov [si], al

        print print_cat
        print str_1

        term

        ends
        end
