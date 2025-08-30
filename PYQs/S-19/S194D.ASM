; Write an ALP using procedure to solve equation such as Z = (A + B) * (C + D)

.model small
.data
        A db 34H
        B db 23H
        C db 23H
        D db 56H
        Z dw ?
.code
        mov ax, @data
        mov ds, ax

        call cal_proc

cal_proc proc
        mov al, A
        add al, B

        mov bl, C
        add bl, D

        mov ah, 00H
        mul bl
        mov Z, ax

     ret
    endp

        ends
        end
