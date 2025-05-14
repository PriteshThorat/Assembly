; ALP to arrange numbers in an array in ascending or descending order

.model small
.data
        arr dw 1115H,1113H,1112H,1111H,1114H
.code
        mov ax, @data
        mov ds, ax

        mov bl, 05H
  upper:mov si, offset arr
        mov cx, 04H
     up:mov ax, [si]
        cmp ax, [si+2]
        jc dn
        xchg ax, [si+2]
        xchg ax, [si]
     dn:add si, 2H
        loop up
        dec bl
        jnz upper

        ends
        end
