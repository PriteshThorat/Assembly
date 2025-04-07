; Write an assembly language program to solve p = (x)^2 + (y)^2 using macro.

.model small
 sq_num macro n
        mov al, n
        mov ah, 00H
        mul n
    endm
add_num macro n1, n2
        mov ax, n1
        add ax, n2
    endm
.data
        x db 23H
        y db 27H
        p dw ?
.code
        mov ax, @data
        mov ds, ax
        sq_num x
        mov bx, ax
        sq_num y
        add_num ax, bx
        mov p, ax
        ends
        end
