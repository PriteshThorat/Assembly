; Write ALP to find the sum of series. Assume series of 10 numbers.

.model small
.data
        arr dw 1111H,1112H,1113H,1114H,1115H,1116H,1117H,1118H,1119H,1120H
        sum dw 0H
.code
        mov ax, @data
        mov ds, ax

        mov cx, 0AH
        mov si, offset arr
     up:mov ax, [si]
        add sum, ax
        add si, 2H
        loop up

        ends
        end
