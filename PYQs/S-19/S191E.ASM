; Write ALP for addition of two 8 bit numbers. Assume suitable data.

.model small
.data
        num1 db 45H
        num2 db 23H
        res  db ?
.code
        mov ax, @data
        mov ds, ax

        mov al, num1
        add al, num2
        mov res, al

        ends
        end
