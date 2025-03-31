.model small
.data
        num dw -1657
        str_pos db 'The Given No is Positive$'
        str_neg db 'The Given No is Negative$'
.code
        mov ax, @data
        mov ds, ax
        mov ax, num
        rol ax, 1H
        mov ah, 09H
        jc dn
        mov dx, offset str_pos
        int 21H
        jmp exit
     dn:mov dx, offset str_neg
        int 21H
   exit:mov ah, 4ch
        int 21h
        ends
        end