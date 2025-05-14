; ALP to find smallest and largest number from array of numbers

.model small
.data
        arr   dw 1115H,1113H,1112H,1111H,1114H
        sml_n dw ?
        lar_n dw ?
.code
        mov ax, @data
        mov ds, ax

        mov si, offset arr
        mov cx, 04H
        mov ax, [si]
     up:cmp ax, [si+2]
        jc dn
        mov ax, [si+2]
     dn:add si, 2H
        loop up
        mov sml_n, ax

        mov si, offset arr
        mov cx, 04H
        mov ax, [si]
    up1:cmp ax, [si+2]
        jnc dn1
        mov ax, [si+2]
    dn1:add si, 2H
        loop up1
        mov lar_n, ax

        ends
        end
