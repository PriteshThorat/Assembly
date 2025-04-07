; Write an ALP to reverse a string. Also draw flowchart for same.

.model small
.data
        str_s db 'Pritesh$'
        str_d db 10 dup('$')
        len_s db 0H
        new_line db 0Dh, 0Ah, '$'
.code
        mov ax, @data
        mov ds, ax
        mov ah, 09H
        mov dx, offset str_s
        int 21H
        mov dx, offset new_line
        int 21H
        mov si, offset str_s
        mov di, offset str_d
     up:mov al, [si]
        cmp al, '$'
        je down
        inc len_s
        inc si
        jmp up
   down:mov cl, len_s
        mov ch, 00H
        dec si
    up1:mov al, [si]
        mov [di], al
        dec si
        inc di
        loop up1
        mov ah, 09H
        mov dx, offset str_d
        int 21H
        mov ah, 4ch
        int 21H
        ends
        end
