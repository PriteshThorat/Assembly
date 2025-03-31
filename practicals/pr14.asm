.model small
.data
        num      dw 1657H
        even_str db 'The Given Number is Even$'
        odd_str  db 'The Given Number is Odd$'
.code
        mov ax, @data
        mov ds, ax
        mov ax, num
        ror ax, 1H
        mov ah, 09H
        jc dn
        mov dx, offset even_str
        int 21H
        jmp exit
     dn:mov dx, offset odd_str
        int 21H
   exit:mov ah, 4ch
        int 21h
        ends
        end