.model small
.data
        arr   dw 1651H,1652H,1653H,1654H,1655H,1656H,1657H,1658H,1659H,1660H
        arr_e   dw 10 dup(0)
        arr_o   dw 10 dup(0)
        count_e dw 0H
        count_o dw 0H
.code
        mov ax, @data
        mov ds, ax
        ;Even Numbers Array
        mov cx, 0AH
        mov si, offset arr
        mov di, offset arr_e
     up:mov ax, [si]
        ror ax, 1H
        jc next
        rol ax, 1H
        inc count_e
        mov [di], ax
        add di, 2H
   next:add si, 2H
        loop up
        ;Odd Numbers Array
        mov cx, 0AH
        mov si, offset arr
        mov di, offset arr_o
 upside:mov ax, [si]
        ror ax, 1H
        jnc down
        rol ax, 1H
        inc count_o
        mov [di], ax
        add di, 2H
   down:add si, 2H
        loop upside
        ;Arranging Even Numbers in Decending Order
        mov bx, count_e
        sub count_e, 1H
     up1:mov cx, count_e
        mov si, offset arr_e
  next1:mov ax, [si]
        cmp ax, [si+2]
        jnc dn1
        xchg ax, [si+2]
        xchg ax, [si]
    dn1:add si, 2H
        loop next1
        dec bl
        jnz up1
        ;Arranging Odd Numbers in Decending Order
        mov bx, count_o
        sub count_o, 1H
     up2:mov cx, count_o
        mov si, offset arr_o
  next2:mov ax, [si]
        cmp ax, [si+2]
        jnc dn2
        xchg ax, [si+2]
        xchg ax, [si]
    dn2:add si, 2H
        loop next2
        dec bl
        jnz up2
        ends
        end
