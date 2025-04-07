; Write an assembly language program to arithmetic operation such as addition, subtraction, multiplication and division using procedure.

.model small
.data
        num1  db 22H
        num2  db 11H
        sum_n db ?
        sub_n db ?
        mul_n dw ?
        rem   db ?
        quo   db ?
.code
        mov ax, @data
        mov ds, ax
        call add_num
        mov sum_n, al
        call sub_num
        mov sub_n, al
        call mul_num
        mov mul_n, ax
        call div_num
        mov quo, al
        mov rem, ah
add_num proc
        mov al, num1
        add al, num2
     ret
    endp
sub_num proc
        mov al, num1
        sub al, num2
     ret
    endp
mul_num proc
        mov al, num1
        mov ah, 00H
        mul num2
     ret
    endp
div_num proc
        mov ah, 00H
        mov al, num1
        div num2
     ret
    endp
        ends
        end
