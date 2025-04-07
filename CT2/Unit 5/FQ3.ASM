; Write an ALP using procedure to solve equation such as Z = (A + B) * (C + D)

.model small
.data
        A db 07H
        B db 23H
        C db 23H
        D db 02H
        Z dw ?
.code
        mov ax, @data
        mov ds, ax
        mov al, A
        mov bl, B
        call add_no
        mov dl, al
        mov al, C
        mov bl, D
        call add_no
        mov bl, dl
        call mul_no
        mov Z, ax
 add_no proc
        add al, bl
     ret
    endp
 mul_no proc
        mul bl
     ret
    endp
        ends
        end
